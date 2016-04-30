class Project < ActiveRecord::Base
  belongs_to :user
  has_many :images, dependent: :delete_all
  has_many :comments
  accepts_nested_attributes_for :images, reject_if: :reject_images
  validates_presence_of :title, :catch_copy, :concept

  def reject_images(attributed)
    attributed['image'].blank?
  end

  def like_user(user_id)
    likes.find_by(user_id: user_id)
  end
end
