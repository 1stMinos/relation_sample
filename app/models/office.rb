class Office < ActiveRecord::Base
	has_many :from_stations, dependent: :nullify
	has_many :from_stations_ways, :through => :from_stations
	has_many :stations, :through => :from_stations

	has_many :office_gyotais
	has_many :gyotais, :through => :office_gyotais
	accepts_nested_attributes_for :gyotais
end
