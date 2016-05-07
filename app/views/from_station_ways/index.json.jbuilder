json.array!(@from_station_ways) do |from_station_way|
  json.extract! from_station_way, :id, :name
  json.url from_station_way_url(from_station_way, format: :json)
end
