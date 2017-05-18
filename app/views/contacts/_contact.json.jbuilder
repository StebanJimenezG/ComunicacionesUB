json.extract! contact, :id, :email, :mensaje, :created_at, :updated_at
json.url contact_url(contact, format: :json)
