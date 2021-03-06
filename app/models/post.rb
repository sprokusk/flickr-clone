class Post < ApplicationRecord
  validates_presence_of :caption, :location, :image
  belongs_to :user
  has_and_belongs_to_many :accounts
  has_attached_file :image, styles: { :medium => "640>", :thumb => "200#" }, :path => "flickr-clone-rails/:attachment/:style/:id.:extension"
  validates_attachment_content_type :image, :content_type => /\Aimage\/.*\Z/
end
