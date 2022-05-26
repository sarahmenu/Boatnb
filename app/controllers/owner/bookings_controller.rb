module Owner
  class BookingsController < ApplicationController


    def index
      @owner_boats = Boat.all.where(user: current_user)
      @owner_bookings_canceled = []
      @owner_bookings_accepted = []
      @owner_bookings_pending = []
      @owner_boats.each do |boat|
        boat.bookings.each do |boat_booking|
          @owner_bookings_canceled << boat_booking if boat_booking.status == "Canceled"
          @owner_bookings_accepted << boat_booking if boat_booking.status == "Accepted"
          @owner_bookings_pending << boat_booking if boat_booking.status == "Pending"
        end
      end
    end

    def accept
    end
  end
end
