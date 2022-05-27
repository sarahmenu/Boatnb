class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: :home
  def home
    @boats = Boat.all
    @locations = @boats.map(&:location).uniq
    @markers = @boats.geocoded.map do |boat|
      {
        lat: boat.latitude,
        lng: boat.longitude,
        info_window: render_to_string(partial: "info_window", locals: { boat: boat }),
        image_url: helpers.asset_url("antho.png")
      }
    end
  end

  def location
    @boats = Boat.where(boat.location = params[:location])
    # @boats = Boat.near
  end
end
