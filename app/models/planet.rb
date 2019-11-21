class Planet < ApplicationRecord
  has_many :bookings, dependent: :destroy
  has_many :reviews, dependent: :destroy
  belongs_to :user
  has_many :planet_pictures, dependent: :destroy
  validates :name, presence: true, uniqueness: true
  validates :price, presence: true, numericality: true
  validates :capacity, presence: true, numericality: true
  validates :description, :stellar_coordinates, :weather, presence: true

  def next_bookings
    Booking.where("planet_id = ? AND check_out > ?", self.id, Date.today)
  end

  include PgSearch::Model
  pg_search_scope :search,
    against: [:name, :description, :weather],
    using: {
      tsearch: { prefix: true } # <-- now `superman batm` will return something!
    }

  def average_rating
    average_rating = 0
    @reviews = self.reviews

    if @reviews == []
      return average_rating = 0
    else
      @reviews.each { |review| average_rating += review.rating }
      average_rating /= @reviews.length
      return average_rating
    end
  end
end




def user_id_exists
  return false if User.find_by_id(self.user_id).nil?
end
