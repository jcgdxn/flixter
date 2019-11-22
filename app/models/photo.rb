class Photo < ApplicationRecord
  belongs_to :course
  belongs_to :user
  mount_uploaders :image, PictureUploader
end
