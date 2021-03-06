class Artist < ApplicationRecord
  has_many :songs, dependent: :destroy

  validates :name, presence: true
  

  mount_uploader :image, ImageUploader
end
