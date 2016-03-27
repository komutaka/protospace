class Project < ActiveRecord::Base
  mount_uploader :image, ImageUploader
  belongs_to :user

  validates_presence_of :user_id, :image
end
