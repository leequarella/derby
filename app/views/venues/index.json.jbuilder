json.array!(@venues) do |venue|
  json.extract! venue, :name, :address, :city, :state, :zip
  json.url venue_url(venue, format: :json)
end
