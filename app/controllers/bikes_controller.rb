class BikesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show]
  # private
  def index
    @bikes = Bike.where(address: params[:city])
    # byebug
    # if Booking.all.each do |booking|
    # booking.checkin < params[:ckeckin]
    # @bikes - booking.bike_id
    # elsif
    # booking.checkout > params[:ckeckout]
    # @bikes - booking.bike_id
    # end
    #
    @markers = Gmaps4rails.build_markers(@bikes) do |bike, marker|
      marker.lat bike.latitude
      marker.lng bike.longitude
    end




  end

  def show
    @booking = Booking.new
    @bike = Bike.find(params[:id])
  end

  def new
    @bike = Bike.new
  end

  def create
    @bike = Bike.new(bike_params)
    if @bike.save
      flash[:notice] = "Bike #{@bike.brand} #{@bike.model} has been created"
      redirect_to bike_path(@bike)
    else
      flash[:alert] = "Bike #{@bike.brand} #{@bike.model} has not been created"
      render :new
    end
  end

  private

  def bike_params
    params.require(:bike).permit(:description, :model, :year, :displacement, :brand, :bike_type, :address, :mileage, :photo, :photo_cache)
  end
end
