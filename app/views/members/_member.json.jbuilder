json.extract! member, :id, :nombre, :correo, :telefono, :descripcion, :foto, :created_at, :updated_at
json.url member_url(member, format: :json)
