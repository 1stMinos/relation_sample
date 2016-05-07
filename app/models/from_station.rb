class FromStation < ActiveRecord::Base
  belongs_to :office
  belongs_to :from_station_way

  has_many :station_from_stations, dependent: :destroy
  has_many :offices, :through => :staton_from_stations
end
