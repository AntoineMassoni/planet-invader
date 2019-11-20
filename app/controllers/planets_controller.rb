class PlanetsController < ApplicationController
  before_action :set_planet, only: %i[show edit update destroy]

  def home
    @rating_planets = Planet.all.order(rating: :desc)
    @new_planets = Planet.all.order(created_at: :desc)
    @planets = Planet.all
  end

  def index
    @planets = Planet.all
  end

  def search
    @planets = Planet.where(name: params[:search].capitalize)
    if @planets == []
      @planets = Planet.where(price: params[:search].capitalize)
    elsif @planets == []
      @planets = Planet.where(capacity: params[:search].capitalize)
    elsif @planets == []
      @planets = Planet.where(stellar_coordinates: params[:search].capitalize)
    elsif @planets == []
      @planets = Planet.where(activities: params[:search].capitalize)
    elsif @planets == []
      @planets = Planet.where(weather: params[:search].capitalize)
    elsif @planets == []
      @planets = Planet.where(local_population: params[:search].capitalize)
    end

    # raise

    @planet = @planets.first

    # redirect_to
    redirect_to planet_path(@planet)
  end

  def show
    @planet = Planet.find(params[:id])
    @booking = Booking.new
    @review = Review.new
    @reviews = Review.where(planet_id: @planet.id)
    @average_rating = average_calcul
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
    if @planet.save
      redirect_to planets_path
    else
      render :new
    end
  end

  def edit; end

  def update
    @planet = planet.update(planet_params)
    redirect_to flat_path(@planet)
  end

  def destroy
    @planet.destroy
    redirect_to planets_path
  end

  private

  def set_planet
    @planet = Planet.find(params[:id])
  end

  def planet_params
    params.require(:planet).permit(:name,
                                   :description,
                                   :price,
                                   :capacity,
                                   :stellar_coordinates,
                                   :activities,
                                   :weather,
                                   :local_population,
                                   :user)
  end

  def average_calcul
    average_rating = 0

    @reviews.each { |review| average_rating += review.rating }

    average_rating = average_rating / @reviews.length
  end
end
