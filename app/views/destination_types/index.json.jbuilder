json.array!(@destination_types) do |destination_type|
  json.extract! destination_type, :id, :name
  json.url destination_type_url(destination_type, format: :json)
end
