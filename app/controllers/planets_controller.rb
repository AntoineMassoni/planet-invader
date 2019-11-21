class PlanetsController < ApplicationController
  before_action :set_planet, only: %i[show edit update destroy]
  skip_before_action :authenticate_user!, only: %i[home index]
  def home
    @rating_planets = Planet.all.order(rating: :desc)
    @new_planets = Planet.all.order(created_at: :desc)
    @planets = Planet.all
    authorize @planets
  end

  def index
    if params[:search].present?
      if @planets.nil?
        @message = "Pas de résultat pour '#{params[:search]}'"
        @planets = Planet.all
      end
    else
      @planets = Planet.all
    end
    @planets = Planet.search(params[:search])
    @planets = policy_scope(Planet).order(created_at: :desc)
  end

  def show
    @planet = Planet.find(params[:id])
    authorize @planet
    @booking = Booking.new
    @review = Review.new
    @reviews = Review.where(planet_id: @planet.id)
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
    authorize @planet
  end

  def create
    @planet = Planet.new(planet_params)
    @planet.user = current_user
    authorize @planet
    if @planet.save
      create_pictures
      redirect_to planet_path(@planet)
    else
      render :new
    end
  end

  def edit
    authorize @planet
  end

  def update
    @planet.update(planet_params)
    authorize @planet
    create_pictures
    redirect_to planet_path(@planet)
  end

  def destroy
    @planet.destroy
    authorize @planet
    redirect_to dashboard_path
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
end
