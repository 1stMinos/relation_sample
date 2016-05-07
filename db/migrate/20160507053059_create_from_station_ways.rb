class CreateFromStationWays < ActiveRecord::Migration
  def change
    create_table :from_station_ways do |t|
      t.string :name

      t.timestamps null: false
    end
  end
end
