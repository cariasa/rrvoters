ActiveAdmin.register Municipio do

# See permitted parameters documentation:
# https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
#
permit_params :codigo_municipio, :nombre_municipio, :tipo_municipio, :departamento_id

form :html => { :enctype => "multipart/form-data" } do |f|
	f.inputs "Municipio", :multipart => true do
		f.input :codigo_municipio
		f.input :nombre_municipio
		f.input :departamento_id, as: :select, collection: Departamento.pluck(:nombre_departamento,:id)
	end
	actions
end

index do
	selectable_column
	column :codigo_municipio
	column :nombre_municipio
	column :departamento
	actions
end


end
