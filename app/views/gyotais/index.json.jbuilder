json.array!(@gyotais) do |gyotai|
  json.extract! gyotai, :id, :name, :parent_id, :parent_name, :comment
  json.url gyotai_url(gyotai, format: :json)
end
