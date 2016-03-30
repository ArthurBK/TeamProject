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
    @booking = Booking.new(booking_params)
    if @booking.save
      flash[:notice] = "Booking from #{@booking.checkin} to #{@booking.checkout} has been created"
      redirect_to booking_path(@booking)
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
