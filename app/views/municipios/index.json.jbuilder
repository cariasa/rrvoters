json.array!(@municipios) do |municipio|
  json.extract! municipio, :id, :codigo_municipio, :nombre_municipio, :departamento_id
  json.url municipio_url(municipio, format: :json)
end
