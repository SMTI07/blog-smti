class Photo < ApplicationRecord
  belongs_to :album
  mount_uploader :image, ImageUploader
  validates :title,  presence: true
  validates :album_id,  presence: true
  validates :image,  presence: true
end
