class BookingsController < ApplicationController
  def new
    @offer = Offer.find(params[:offer_id])
    @booking = Booking.new
  end

  def create
    @offer = Offer.find(params[:offer_id])
    @booking = Booking.new(booking_params)
    @booking.offer = @offer
    @booking.user = current_user
    if @booking.save
      flash[:notice] = "Booking successful!"
      redirect_to dashboard_path
    else
      render :new, status: :unprocessable_entity
    end
  end

  def index
    @bookings = Booking.all
  end

  private

  def booking_params
    params.require(:booking).permit(:start_date, :end_date)
  end
end
