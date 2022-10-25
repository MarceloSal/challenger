json.extract! citizen, :id, :first_name, :last_name, :cpf, :cns, :email, :birthday, :phone, :photo, :status, :created_at, :updated_at
json.url citizen_url(citizen, format: :json)
