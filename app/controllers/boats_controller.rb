class BoatsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:show, :index]

  def index
    # @boats = Boat.all
    if params[:location]
      @boats = Boat.where(:location => params[:location])
    else
      @boats = Boat.all
    end
    @markers = @boats.geocoded.map do |boat|
      {
        lat: boat.latitude,
        lng: boat.longitude,
        info_window: render_to_string(partial: "info_window", locals: { boat: boat }),
        image_url: helpers.asset_url("antho.png")
      }
    end
  end


  def show
    @boat = Boat.find(params[:id])
    @booking = Booking.new
    @markers = [{
        lat: @boat.latitude,
        lng: @boat.longitude,
        info_window: render_to_string(partial: "info_window", locals: { boat: @boat }),
        image_url: helpers.asset_url("antho.png")
      }]
  end

  def new
    @boat = Boat.new
  end
end
