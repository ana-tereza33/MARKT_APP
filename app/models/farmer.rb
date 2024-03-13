class Farmer < ApplicationRecord
  belongs_to :user
  has_one_attached :main_photo, dependent: :destroy
  has_many_attached :sub_photos, dependent: :destroy

  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?

  has_many :products, dependent: :destroy
  validates :description_farm, presence: true

  validates :latitude, presence: true
  validates :longitude, presence: true

  def self.search(search)
    if search
      product_type = Product.find_by(name: search)
      if product_type
        self.where(product_id: product_type)
      else
        @products = Product.all
      end
    end
  end

  # validates :latitude, presence: true
  # validates :longitude, presence: true

end
