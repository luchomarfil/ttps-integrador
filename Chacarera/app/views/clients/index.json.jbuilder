json.array!(@clients) do |client|
  json.extract! client, :id, :cuil_cuit, :dni, :gender, :name, :surname, :birth_date, :telephone, :email, :skype
  json.url client_url(client, format: :json)
end
