class BoatsController < ApplicationController
  skip_before_action :authenticate_user!

  def index
    @boats = Boat.all
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

  def edit
    @boat = Boat.find(params[:id])
  end

  def update
    @boat = Boat.find(params[:id])

    if @boat.update(boat_params)
      redirect_to @boat
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
    @boat = Boat.find(params[:id])
    @boat.destroy

    redirect_to root_path, status: :see_other
  end

  private

  def boat_params
    params.require(:boat).permit(:name, :location, :price, :category, :capacity)
  end
end
