class ReviewsController < ApplicationController
  before_action :set_planet, only: %i[index shox new create]
  before_action :set_review, only: %i[edit update destroy]

  def index
  end

  def show
  end

  def new
    @review = Review.new
    authorize @review
  end

  def create
    @review        = Review.new(review_params)
    @review.planet = @planet
    @review.user   = current_user
    authorize @review
    if @review.save
      respond_to do |format|
        format.html { redirect_to planet_path(@planet) }
        format.js  # <-- will render `app/views/reviews/create.js.erb`
      end
    else
      respond_to do |format|
        format.html { render 'planet/show' }
        format.js  # <-- idem
      end
    end
  end

  def edit
    authorize @review
  end

  def update
    @planet = @review.planet
    authorize @review
    if @review.update(review_params)
      redirect_to planet_path(@planet)
    else
      render :edit
    end
  end

  def destroy
    planet = @review.planet
    authorize @review
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
