class Boat < ApplicationRecord
  belongs_to :user
  has_one_attached :photo
  validates :name, :price, :location, :description, :category, :capacity, presence: true
  validates :name, uniqueness: true
end
