class CreatePetStatuses < ActiveRecord::Migration
  def change
    create_table :pet_statuses do |t|
     # t.string :estado
      t.string :name
      t.timestamps
    end
  end
end
