class BoatsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:show, :index]

  def index
    @boats = Boat.all
  end

  def show
    @boat = Boat.find(params[:id])
    @booking = Booking.new
  end

  private

    def boat_params
      params.require(:boat).permit(:name, :location, :price)
    end
end
