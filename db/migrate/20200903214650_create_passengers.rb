class CreatePassengers < ActiveRecord::Migration[5.2]
  def change
    create_table :passengers do |t|
      t.string :name, null: false
      t.string :email

      t.timestamps
    end
  end
end
