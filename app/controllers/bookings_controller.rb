class BookingsController < ApplicationController

  def index
    @bookings = Booking.all
  end

  def show
    @booking = Booking.find(params[:id])
  end

  def new
    @booking = Booking.new
  end

  def create
    @bike = Bike.find(params[:bike_id])
    @booking = Booking.new(booking_params)
    @booking.bike_id = params[:bike_id]
    @booking.user_id = User.find(current_user).id
    if @booking.save
      flash[:notice] = "Booking from #{@booking.checkin} to #{@booking.checkout} has been created"
      redirect_to bike_bookings_path(@bike)
    else
      flash[:alert] = "Booking from #{@booking.checkin} to #{@booking.checkout} has not been created"
      render :new
    end
  end

  private

  def booking_params
    params.require(:booking).permit(:bike, :checkin, :checkout)
  end
end
