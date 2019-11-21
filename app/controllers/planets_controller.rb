class PlanetsController < ApplicationController
  before_action :set_planet, only: %i[show edit update destroy]
  skip_before_action :authenticate_user!, only: :home
  def home
    @rating_planets = Planet.all.order(rating: :desc)
    @new_planets = Planet.all.order(created_at: :desc)
    @planets = Planet.all
  end

  def index
    if params[:search].present?
      @planets = Planet.search "#{params[:search]}"
    else
      @planets = Planet.all
    end
  end

  def show
    @planet = Planet.find(params[:id])
    @booking = Booking.new
    @review = Review.new
    @reviews = Review.where(planet_id: @planet.id)
    @average_rating = if @reviews.length.zero?
                        0
                      else
                        average_calcul
                      end
    @bookings = @planet.next_bookings
    @bookings_dates = @bookings.map do |booking|
      {
        from: booking.check_in,
        to: booking.check_out
      }
    end
  end

  def new
    @planet = Planet.new
  end

  def create
    @planet = Planet.new(planet_params)
    @planet.user = current_user
    if @planet.save
      create_pictures
      redirect_to planet_path(@planet)
    else
      render :new
    end
  end

  def update
    @planet = planet.update(planet_params)
    redirect_to planet_path(@planet)
  end

  def destroy
    @planet.destroy
    redirect_to planets_path
  end

  private

  def create_pictures
    photos = params.dig(:planet, :pictures) || []
    photos.each do |photo|
      @planet.planet_pictures.create(photo: photo)
    end
  end

  def set_planet
    @planet = Planet.find(params[:id])
  end

  def planet_params
    params.require(:planet).permit(:name,
                                   :description,
                                   :price,
                                   :capacity,
                                   :stellar_coordinates,
                                   :weather,
                                   :user)
  end

  def average_calcul
    average_rating = 0

    @reviews.each { |review| average_rating += review.rating }

    average_rating /= @reviews.length
  end
end
