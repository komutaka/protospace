class Project < ActiveRecord::Base
  belongs_to :user
  has_many :images, dependent: :delete_all
  has_many :likes, dependent: :destroy
  has_many :comments
  accepts_nested_attributes_for :images, reject_if: :reject_images
  validates_presence_of :title, :catch_copy, :concept

  acts_as_taggable

  def reject_images(attributed)
    attributed['image'].blank?
  end
end
