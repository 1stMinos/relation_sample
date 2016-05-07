json.array!(@offices) do |office|
  json.extract! office, :id, :name, :latitude, :longitude, :comment
  json.url office_url(office, format: :json)
end
