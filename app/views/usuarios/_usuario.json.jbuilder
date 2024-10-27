json.extract! usuario, :id, :nombre, :apellido, :correo, :telefono, :fecha_registro, :status, :created_at, :updated_at
json.url usuario_url(usuario, format: :json)
