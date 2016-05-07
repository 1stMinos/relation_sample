class FromStationWay < ActiveRecord::Base
	has_many :from_stations, dependent: :nullify
end
