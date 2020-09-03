class CreateBookings < ActiveRecord::Migration[5.2]
  def change
    create_table :bookings do |t|
      t.references :flight_id, null: false
      t.references :passenger_id, null: false
      t.integer :passenger_count

      t.timestamps
    end

    add_foreign_key :bookings, :flights, column: :flight_id
    add_foreign_key :bookings, :passengers, column: :passenger_id
  end
end
