json.array!(@from_staiton_ways) do |from_staiton_way|
  json.extract! from_staiton_way, :id, :name
  json.url from_staiton_way_url(from_staiton_way, format: :json)
end
