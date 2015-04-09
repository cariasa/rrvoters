json.array!(@personas) do |persona|
  json.extract! persona, :id, :identidad_persona, :nombres_persona, :apellidos_persona, :telefono_persona, :email_persona, :barrio_colonia_id
  json.url persona_url(persona, format: :json)
end
