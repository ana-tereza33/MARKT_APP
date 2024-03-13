class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  validates :name, presence: true
  # validates :address, presence: true
  has_one :farmer, dependent: :destroy
  has_one :basket, dependent: :destroy
  has_many :chatrooms, dependent: :destroy
end
