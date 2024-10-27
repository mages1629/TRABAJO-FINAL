json.extract! articulo, :id, :titulo, :contenido, :usuario_id, :categoria_id, :fecha_creacion, :publicado, :created_at, :updated_at
json.url articulo_url(articulo, format: :json)
