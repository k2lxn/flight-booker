class CreateFlights < ActiveRecord::Migration
  def change
    create_table :flights do |t|
      t.datetime :depart_time
      t.integer :duration
      t.integer :departs_from
      t.integer :arrives_at

      t.timestamps null: false
    end
    
    add_index :flights, :departs_from
    add_index :flights, :arrives_at
  end
end
