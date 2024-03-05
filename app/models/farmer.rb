class Farmer < ApplicationRecord
  belongs_to :user
  has_one_attached :main_photo
  has_many_attached :sub_photos
  validates :latitude, presence: true
  validates :longitude, presence: true
  validates :description_farm, presence: true
end
