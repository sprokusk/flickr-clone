class RegistrationsController < Devise::RegistrationsController
  protected

  def after_sign_up_path_for(resource)
    '/accounts/new' # Or :prefix_to_your_route
  end

  private

  def sign_up_params
    params.require(:user).permit(:email, :user_name, :password, :password_confirmation)
  end

  def account_update_params
    params.require(:user).permit(:email, :user_name, :password, :password_confirmation, :current_password)
  end
end
