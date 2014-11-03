class CreatePetTypeColours < ActiveRecord::Migration
  def change
    create_table :pet_type_colours do |t|
      t.string :color
      t.text :descripcion
      t.integer :pet_type_id

      t.timestamps
    end
  end
end
