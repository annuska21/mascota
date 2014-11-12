class CreatePetTypes < ActiveRecord::Migration
  def change
    create_table :pet_types do |t|
      #t.string :PetTypeName
      t.string :name
      t.timestamps
    end
  end
end
