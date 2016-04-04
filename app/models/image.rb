class Image < ActiveRecord::Base
  mount_uploader :image, ImageUploader
  belongs_to :projects
  enum status: { draft: 0, published: 1 }
end
