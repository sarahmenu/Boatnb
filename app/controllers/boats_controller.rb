class BoatsController < ApplicationController
  skip_before_action :authenticate_user!, only: :home

  def index
    @boats = Boat.all
  end

  def show
    @boat = Boat.find(params: :id)
  end

  def new
    @boat = Boat.new
  end

  def create
    @boat = Boat.new(boat_params)

    if @boat.save
      redirect_to boats_path
    else
      render :new
    end
  end

  private

    def boat_params
      params.require(:boat).permit(:name, :location, :price)
    end
end
