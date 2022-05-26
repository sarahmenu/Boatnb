class Boat < ApplicationRecord
  belongs_to :user
  has_many :bookings
  has_one_attached :photo
  validates :name, :price, :location, :description, :category, :capacity, presence: true

  CATEGORIES = ["motor boat", "sailing ship"]
end
