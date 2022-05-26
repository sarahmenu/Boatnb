class BookingsController < ApplicationController

  def index
    @tenant_bookings = Booking.where(user: current_user)
    @my_boats = Boat.where(user: current_user)
    @owner_bookings = Booking.where(boat: @my_boats)
  end

  def new
    @booking = Booking.new
  end

  def show
    @booking = Booking.find(params[:booking_id])
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

  def edit
    @booking = Booking.find(params[:id])
  end

  def update
    @booking = Booking.find(params[:id])

    if @booking.update(booking_params)
      redirect_to @booking
    else
      render :edit
    end
  end

  def destroy
    @booking = Booking.find(params[:id])
    @booking.destroy

    redirect_to my_bookings_path
  end

  private

  def booking_params
    params.require(:booking).permit(:start_at, :end_at)
  end
end
