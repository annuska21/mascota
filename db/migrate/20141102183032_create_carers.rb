class CreateCarers < ActiveRecord::Migration
  def change
    create_table :carers do |t|
      t.integer :shelter_id
      # t.string :nombre
      # t.string :apellidos
     #  t.string :email
       #t.integer :telefono
      # t.boolean :localizar
      # t.string :calle
       #t.string :provincia
       #t.integer :cp
       #t.text :comentarios

      t.string :dni
      t.string :name
      t.string :last_name
      t.string :email
      t.integer :phone
      t.boolean :locate
      t.boolean :inactive
      t.string :via
      t.string :street
      t.string :town
      t.string :province
      t.integer :postal_code
      t.text :commentary
    
      t.timestamps
    end
  end
end
