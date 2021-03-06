class BookingsController < ApplicationController
  def create
    @booking = Booking.new
    @experience = Experience.find(params[:experience_id])
    @booking.experience = @experience
    @booking.participant = current_user
    if @booking.save
      redirect_to experience_path(@experience), notice: 'Top réservé'
    else
      redirect_to experience_path(@experience), alert: 'ça a pas marché'
    end
    # Comment gérer la diminution du nombre de participants étant donné que chaque expérience est limitée à un nombre donné
  end
end
