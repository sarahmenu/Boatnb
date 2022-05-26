class BoatsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:show, :index]

  def index
    @boats = Boat.all
  end

  def show
    @boat = Boat.find(params[:id])
    @booking = Booking.new
  end

  def new
    @boat = Boat.new
  end
end
