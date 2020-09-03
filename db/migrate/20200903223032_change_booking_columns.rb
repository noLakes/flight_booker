class ChangeBookingColumns < ActiveRecord::Migration[5.2]
  def change
    remove_column :bookings, :passenger_id
  end
  remove_index :bookings, name: "index_bookings_on_passenger_id"
end
