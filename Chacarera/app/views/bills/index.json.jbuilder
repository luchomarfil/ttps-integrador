json.array!(@bills) do |bill|
  json.extract! bill, :id, :concepto, :monto, :fecha_emision, :person_id, :client_id
  json.url bill_url(bill, format: :json)
end
