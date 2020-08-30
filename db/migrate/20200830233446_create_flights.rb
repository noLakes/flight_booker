class CreateFlights < ActiveRecord::Migration[5.2]
  def change
    create_table :flights do |t|
      t.references :departure_airport, null: false
      t.references :arrival_airport, null: false
      t.datetime :time
      t.float :duration

      t.timestamps
    end

    add_foreign_key :flights, :airports, column: :departure_airport_id
    add_foreign_key :flights, :airports, column: :arrival_airport_id
    
  end
end
