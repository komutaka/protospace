class Project < ActiveRecord::Base
  mount_uploader :image, ImageUploader
  belongs_to :user
  has_many :images
  accepts_nested_attributes_for :images
  validates_presence_of :user_id, :image
end
