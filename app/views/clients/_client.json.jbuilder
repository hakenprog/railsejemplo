json.extract! client, :id, :nombre, :created_at, :updated_at
json.url client_url(client, format: :json)
