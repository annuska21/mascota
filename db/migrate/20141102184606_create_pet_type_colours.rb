class CreatePetTypeColours < ActiveRecord::Migration
  def change
    create_table :pet_type_colours do |t|
     # t.string :color
      t.string :name
      #t.text :descripcion
      t.text :description
     # t.integer :pet_type_id

      t.timestamps
    end
  end
end
