json.extract! categorium, :id, :nombre, :descripcion, :estatus, :fecha_creacion, :autor_id, :slug, :created_at, :updated_at
json.url categorium_url(categorium, format: :json)
