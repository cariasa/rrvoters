json.array!(@barrio_colonia) do |barrio_colonium|
  json.extract! barrio_colonium, :id, :nombre_colonia, :tipo, :municipio_id
  json.url barrio_colonium_url(barrio_colonium, format: :json)
end
