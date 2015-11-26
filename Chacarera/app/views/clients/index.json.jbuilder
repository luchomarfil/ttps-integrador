json.array!(@clients) do |client|
  json.extract! client, :id, :cuil_cuit, :dni, :gender, :nombre, :apellido, :fecha_nacimiento, :telefono, :email, :skype
  json.url client_url(client, format: :json)
end
