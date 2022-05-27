class Owner::BoatsController < ApplicationController
  def index
    @boats = Boat.where(user: current_user)
  end

  def create
    @boat = Boat.new(boat_params)
    @boat.user = current_user
    if @boat.save
      redirect_to boat_path(@boat)
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
    redirect_to owner_boats_path
  end

  private

  def boat_params
    params.require(:boat).permit(:name, :location, :price, :category, :capacity, :description , :photo)
  end
end
