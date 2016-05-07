class Station < ActiveRecord::Base

	has_many :station_from_stations, dependent: :destroy
	has_many :from_stations, :through => :station_from_stations
end
