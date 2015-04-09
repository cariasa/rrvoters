class CreateDepartmentos < ActiveRecord::Migration
  def change
    create_table :departmentos do |t|
      t.integer :codigo_departamento
      t.string :nombre_departamento

      t.timestamps null: false
    end
  end
end
