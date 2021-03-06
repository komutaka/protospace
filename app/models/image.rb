class Image < ActiveRecord::Base
  mount_uploader :image, ImageUploader
  belongs_to :project
  enum status: %i(main sub)
end
