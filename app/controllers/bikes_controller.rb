class BikesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show]
  def index
    @bikes = Bike.all
  end

  def show
    @bike = Bike.find(params[:id])
  end

  def new
    @bike = Bike.new
  end

  def create
    @bike = Bike.new(bike_params)
    if @bike.save
      flash[:notice] = "Bike #{@bike.name} has been created"
      redirect_to bike_path(@bike)
    else
      flash[:alert] = "Bike #{@bike.name} has not been created"
      render :new
    end
  end

  private

  def bike_params
    params.require(:bike).permit(:model, :year, :displacement, :brand, :bike_type, :photo, :photo_cache)
  end
end
