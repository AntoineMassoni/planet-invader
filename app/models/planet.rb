class Planet < ApplicationRecord
  has_many :bookings
  has_many :reviews
  belongs_to :user
end
