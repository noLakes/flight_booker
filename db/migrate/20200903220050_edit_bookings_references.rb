class EditBookingsReferences < ActiveRecord::Migration[5.2]
  def change
    rename_column :bookings, :flight_id_id, :flight_id
    rename_column :bookings, :passenger_id_id, :passenger_id
  end
end
