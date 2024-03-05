class Farmer < ApplicationRecord
  belongs_to :user
  validates :latitude, presence: true
  validates :longitude, presence: true
  validates :description, presence: true
end
