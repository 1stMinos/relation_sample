class StationFromStation < ActiveRecord::Base
  belongs_to :station
  belongs_to :from_station
end
