json.array!(@destinations) do |destination|
  json.extract! destination, :id, :name, :destination_type_id, :address, :city, :state, :zip, :price, :hours, :phone, :website, :facebook, :heading, :subheading, :gpscoords
  json.url destination_url(destination, format: :json)
end
