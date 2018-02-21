json.extract! client, :id, :name, :identification_document, :birth_date, :phone_number, :notes, :created_at, :updated_at
json.url client_url(client, format: :json)
