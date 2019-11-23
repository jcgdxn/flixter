class Photo < ApplicationRecord
  belongs_to :course
  belongs_to :user
  has_many  :sections
  has_many :lessons
  mount_uploaders :image, ImageUploader
end
