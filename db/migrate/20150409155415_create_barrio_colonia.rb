class CreateBarrioColonia < ActiveRecord::Migration
  def change
    create_table :barrio_colonia do |t|
      t.string :nombre_colonia
      t.string :tipo
      t.references :municipio, index: true

      t.timestamps null: false
    end
    add_foreign_key :barrio_colonia, :municipios
  end
end
