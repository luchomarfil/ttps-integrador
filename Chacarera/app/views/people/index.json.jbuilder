json.array!(@people) do |person|
  json.extract! person, :id, :legal, :name, :cuil_cuit
  json.url person_url(person, format: :json)
end
