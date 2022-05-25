class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :boat
  validates :start_at, :end_at, presence: true
end
