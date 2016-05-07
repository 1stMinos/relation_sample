class CreateStations < ActiveRecord::Migration
  def change
    create_table :stations do |t|
      t.string :name
      t.decimal :latitude
      t.decimal :longitude
      t.text :comment

      t.timestamps null: false
    end
  end
end
