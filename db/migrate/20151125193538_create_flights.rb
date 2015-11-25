class CreateFlights < ActiveRecord::Migration
  def change
    create_table :flights do |t|
      t.datetime :depart_time
      t.integer :duration
      t.integer :departs_from_id
      t.integer :arrives_at_id

      t.timestamps null: false
    end
  end
end
