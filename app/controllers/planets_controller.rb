class PlanetsController < ApplicationController
  before_action :set_planet, only: [:show, :edit, :update, :destroy]
  def home
    @rating_planets = planets.all.order(rating: :desc)
    @new_planets = planets.all.order(created_at: :desc)
  end

  def index
    @planets = Planet.all
  end

  def show
  end

  def new
    @planet =  Planet.new
  end

  def create
    @planet = Planet.new(planet_params)
    if @planet.save
      redirect_to planets_path
    else
      render :new
    end
  end

  def edit
  end

  def update
    @planet.update(planet_params)
    redirect_to flat_path(@planet)
  end

  def destroy
    @planet.destroy
    redirect_to planet_path(@planet)
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
end
