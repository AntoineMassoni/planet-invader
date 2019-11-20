class ReviewsController < ApplicationController
  before_action :set_planet
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
  end

  def destroy
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
