class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :boat
  validates :start_at, :end_at, :total_price, :user_id, :boat_id, presence: true
end
  