json.extract! client, :id, :name, :cpf, :agency, :balance, :created_at, :updated_at
json.url client_url(client, format: :json)
