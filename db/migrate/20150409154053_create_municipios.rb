class CreateMunicipios < ActiveRecord::Migration
  def change
    create_table :municipios do |t|
      t.integer :codigo_municipio
      t.string :nombre_municipio
      t.string :tipo_municipio
      t.references :departamento, index: true

      t.timestamps null: false
    end
    add_foreign_key :municipios, :departamentos
  end
end
