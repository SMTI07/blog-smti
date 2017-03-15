class Album < ApplicationRecord
  has_many :photos
  mount_uploader :cover, ImageUploader
  validates :title,  presence: true
  validates :cover,  presence: true
end
