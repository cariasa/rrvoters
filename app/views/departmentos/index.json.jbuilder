json.array!(@departmentos) do |departmento|
  json.extract! departmento, :id, :codigo_departamento, :nombre_departamento
  json.url departmento_url(departmento, format: :json)
end
