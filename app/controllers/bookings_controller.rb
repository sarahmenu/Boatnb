class BookingsController < ApplicationController

  def my_bookings
    @bookings = Booking.all
    @user_bookings = []
    @bookings.each do |booking|
      if booking.user_id == current_user.id
        @user_bookings << booking
      end
    end
    return @user_bookings
  end

  def new
    @booking = Booking.new
  end

  def create
    @boat = Boat.find(params[:boat_id])
    @booking = Booking.new(booking_params)
    @booking.boat = @boat
    @booking.user_id = current_user.id
    if @booking.save
      redirect_to my_bookings_path
    else
      render 'boats/show'
    end
  end

  def destroy
  end
private

  def booking_params
    params.require(:booking).permit(:start_at, :end_at)
  end
end
