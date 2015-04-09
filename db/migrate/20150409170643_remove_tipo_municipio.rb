class RemoveTipoMunicipio < ActiveRecord::Migration
  def change
  	remove_column :municipios, :tipo_municipio
  end
end
