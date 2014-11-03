class CreateCarers < ActiveRecord::Migration
  def change
    create_table :carers do |t|
      t.string :nombre
      t.string :apellidos
      t.string :email
      t.integer :telefono
      t.boolean :localizar
      t.string :calle
      t.string :provincia
      t.integer :cp
      t.text :comentarios

      t.timestamps
    end
  end
end
