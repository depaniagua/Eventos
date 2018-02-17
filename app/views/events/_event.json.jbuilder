json.extract! event, :id, :nombre, :categoria, :lugar, :direccion, :fecha_inicio, :fecha_fin, :modalidad, :created_at, :updated_at
json.url event_url(event, format: :json)
