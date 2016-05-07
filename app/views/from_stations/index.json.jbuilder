json.array!(@from_stations) do |from_station|
  json.extract! from_station, :id, :office_id, :from_station_way_id, :minutes, :comment
  json.url from_station_url(from_station, format: :json)
end
