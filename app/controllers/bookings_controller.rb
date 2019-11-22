class BookingsController < ApplicationController
  before_action :set_planet, only: %i[show new create]
  def index
    @bookings = Booking.all
  end

  def show
  end

  def new
    @booking = Booking.new
    authorize @booking
  end

  def create
    @booking = Booking.new(booking_params)
    @booking.user = current_user
    @booking.planet = @planet
    authorize @booking
    if @booking.save
      # redirect_to planet_path(@planet)
      redirect_to '/dashboard'
    else
      render 'planets/show'
    end

  end

  def edit
  end

  def update
  end

  def destroy
  end

  private

  def set_planet
    @planet = Planet.find(params[:planet_id])
  end

  def booking_params
    params.require(:booking).permit(:check_in, :check_out, :travelers)
  end
end
