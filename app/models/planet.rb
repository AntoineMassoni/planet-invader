class Planet < ApplicationRecord
  has_many :bookings
  has_many :reviews
  belongs_to :user
  validates :name, presence: true, uniqueness: true
  validates :price, presence: true, numericality: true
  validates :capacity, presence: true, numerciality: true
  validates :description, :stellar_coordinates, :activities, :weather, :local_population, presence: true
end
