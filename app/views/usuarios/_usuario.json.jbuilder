json.extract! usuario, :id, :nombre, :apellido, :identificacion, :tipo_identificacione_id, :created_at, :updated_at
json.url usuario_url(usuario, format: :json)
