class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: :home
  def home
    @boats = Boat.all
    @locations = @boats.map(&:location).uniq
  end

  def location
    @boats = Boat.where(boat.location = params[:location])
    # @boats = Boat.near
  end
end
