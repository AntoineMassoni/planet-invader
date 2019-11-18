class AddTravelersToBooking < ActiveRecord::Migration[5.2]
  def change
    add_column :bookings, :travelers, :integer
  end
end
