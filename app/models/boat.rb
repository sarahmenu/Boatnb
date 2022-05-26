class Boat < ApplicationRecord
  belongs_to :user
  has_one_attached :photo
  validates :name, :price, :location, :description, :category, :capacity, presence: true
  validates :name, uniqueness: true
  geocoded_by :location
  after_validation :geocode, if: :will_save_change_to_location?
end
