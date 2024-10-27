json.extract! comentario, :id, :contenido, :usuario_id, :articulo_id, :fecha, :status, :created_at, :updated_at
json.url comentario_url(comentario, format: :json)
