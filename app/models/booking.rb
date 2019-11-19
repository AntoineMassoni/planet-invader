class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :planet
  validates :check_in, :check_out, :travelers, presence: true

  # def check_out_after_check_in
  #   errors.add(:check_out, "must be after the start date") if check_in > check_out
  # end
  # # def parse_date(year, month, day)
  # #   Date.parse("#{year}-#{month}-#{day}")
  # # end

  # def validate_each
  #   bookings = self.garage.bookings
  #   bookings = bookings.map do |rental|
  #     (rental.check_in..rental.check_out).to_a
  #   end
  #   bookings.flatten
  #   rental_array_date = (self.check_in..self.check_out).to_a
  #   # Rental.where("check_in >= ? AND check_out <= ?", record.check_in, record.check_out)
  #   # bookings = Rental.where(["garage_id =?", record.garage_id])
  #   # date_ranges = bookings.map { |r| r.check_in..r.check_out }

  #   errors.add(:check_in, "not available") if bookings.flatten - rental_array_date != bookings.flatten
  # end
end
