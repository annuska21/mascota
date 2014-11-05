class CreateShelters < ActiveRecord::Migration
  def change
    create_table :shelters do |t|
      t.string :nombre
      t.string :usuario
      t.integer :telefono
      t.string :web
      t.text :requisitos_adopcion
      t.text :descripcion_asociacion
      t.boolean :acogida
      t.text :detalles_acogida
      t.text :informacion_donaciones
      t.boolean :voluntariado
      t.boolean :detalles_voluntariado
      t.string :calle
      t.string :provincia
      t.integer :cp

      t.timestamps
    end
  end
end
