class CreateStationFromStations < ActiveRecord::Migration
  def change
    create_table :station_from_stations do |t|
      t.references :station, index: true, foreign_key: true
      t.references :from_station, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
