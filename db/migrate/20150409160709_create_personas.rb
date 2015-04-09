class CreatePersonas < ActiveRecord::Migration
  def change
    create_table :personas do |t|
      t.string :identidad_persona
      t.string :nombres_persona
      t.string :apellidos_persona
      t.string :telefono_persona
      t.string :email_persona
      t.references :barrio_colonia, index: true

      t.timestamps null: false
    end
    add_foreign_key :personas, :barrio_colonia
  end
end
