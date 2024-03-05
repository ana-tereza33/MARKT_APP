class Product < ApplicationRecord
  belongs_to :farmer
  validates :name, presence: true
  validates :price, presence: true
  validates :quantity, presence: true
  has_one_attached :product_photo
end
