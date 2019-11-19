class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :planet
  validates :check_in, :check_out, :travelers, presence: true
end
