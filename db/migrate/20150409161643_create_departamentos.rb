class CreateDepartamentos < ActiveRecord::Migration
  def change
    create_table :departamentos do |t|
      t.integer :codigo_departamento
      t.string :nombre_departamento

      t.timestamps null: false
    end
  end
end
