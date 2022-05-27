class BookingsController < ApplicationController
  def new
    @booking = Booking.new
    @moto = Moto.find(params[:id])
    authorize @booking
  end

  def create
    @booking = Booking.new(booking_params)
    @booking.user = current_user
    @booking.moto = Moto.find(params[:id])
    authorize @booking
    if @booking.save
      redirect_to booking_path(@booking)
    else
      render :new
    end
  end

  def show
    @booking = Booking.find(params[:id])
    authorize @booking
  end

  def accept
    @booking = Booking.find(params[:id])
    authorize @booking
    @booking.status = "Accepté"
    @booking.save
    redirect_to dashboard_path(anchor: "booking-#{@booking.id}")
  end

  def decline
    @booking = Booking.find(params[:id])
    authorize @booking
    @booking.status = "Décliné"
    @booking.save
    redirect_to dashboard_path(anchor: "booking-#{@booking.id}")
  end

  private

  def booking_params
    params.require(:booking).permit(:start_date, :end_date)
  end
end
