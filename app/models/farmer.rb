class Farmer < ApplicationRecord
  belongs_to :user
  has_one_attached :main_photo
  has_many_attached :sub_photos

  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?

  has_many :products, dependent: :destroy
  validates :description_farm, presence: true
  # validates :latitude, presence: true
  # validates :longitude, presence: true
end
