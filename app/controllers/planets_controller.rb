class PlanetsController < ApplicationController
  def home
  end

  def index
  end

  def show
    @planet = Planet.find(params[:id])
    @booking = Booking.new
  end

  def new
  end

  def create
  end

  def edit
  end

  def update
  end

  def destroy
  end
end
