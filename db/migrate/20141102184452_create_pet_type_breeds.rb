class CreatePetTypeBreeds < ActiveRecord::Migration
  def change
    create_table :pet_type_breeds do |t|
      #t.string :raza
      t.string :name
      t.integer :pet_type_id

      t.timestamps
    end
  end
end
