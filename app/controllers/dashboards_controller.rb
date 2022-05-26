class DashboardsController < ApplicationController
  def show
    @bookings_send = current_user.bookings
    @motos = Moto.where(user: current_user)
    @bookings_rec = current_user.find_bookings
    authorize @bookings_send
    authorize @bookings_rec
    authorize @motos
  end
end
