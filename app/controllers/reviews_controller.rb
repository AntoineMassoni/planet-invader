class ReviewsController < ApplicationController
  before_action :set_planet, only: %i[index shox new create]
  before_action :set_review, only: %i[edit update destroy]

  def index
  end

  def show
  end

  def new
    @review = Review.new
  end

  def create
    @review = Review.new(review_params)
    @review.planet = @planet
    @review.user = current_user
    @review.save
    redirect_to planet_path(@planet)
    if @review.save
      flash[:alert] = "Review added"
    else
      flash[:alert] = "Review not added"
    end
  end

  def edit
  end

  def update
    planet = @review.planet
    if @review.update(review_params)
      redirect_to planet_path(planet)
    else
      render :edit
    end
  end

  def destroy
    planet = @review.planet
    @review.destroy
    redirect_to planet_path(planet)
  end

  private

  def set_planet
    @planet = Planet.find(params[:planet_id])
  end

  def set_review
    @review = Review.find(params[:id])
  end

  def review_params
    params.require(:review).permit(:content, :rating)
  end
end
