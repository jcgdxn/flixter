class Photo < ApplicationRecord
  belongs_to :course
  belongs_to :user
  has_many  :sections
  has_many :lessons
  # add_column :users, :image, :string  #/* https://www.rubydoc.info/gems/carrierwave/0.5.6 */
  mount_uploaders :image, ImageUploader
end
