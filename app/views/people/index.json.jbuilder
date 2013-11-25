json.array!(@people) do |person|
  json.extract! person, :first_name, :last_name, :address_1, :address_2, :city, :state, :zip, :email, :derby_name, :phone, :user_name, :password_digest
  json.url person_url(person, format: :json)
end
