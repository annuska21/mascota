class CreatePets < ActiveRecord::Migration
  def change
    create_table :pets do |t|
      t.integer :hair_type_id
      t.integer :pet_status_id
      t.integer :pet_size_id
      t.integer :pet_type_id
      t.integer :shelter_id
      t.integer :carer_id
      t.string :nombre
      t.date :fecha_nacimiento
      t.text :comentarios
      t.text :necesidades_especiales

      t.timestamps
    end
  end
end
