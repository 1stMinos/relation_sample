class CreateFromStations < ActiveRecord::Migration
  def change
    create_table :from_stations do |t|
      t.references :office, index: true, foreign_key: true
      t.references :from_station_way, index: true, foreign_key: true
      t.integer :minutes
      t.string :comment

      t.timestamps null: false
    end
  end
end
