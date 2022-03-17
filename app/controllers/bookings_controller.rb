class BookingsController < ApplicationController
  def create
    @booking = Booking.new
    @experience = Experience.find(params[:experience_id])
    @booking.experience = @experience
    @booking.participant = current_user
    # Comment gérer la diminution du nombre de participants étant donné que chaque expérience est limitée à un nombre donné
  end
end
