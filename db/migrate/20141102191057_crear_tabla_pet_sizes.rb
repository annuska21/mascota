class CrearTablaPetSizes < ActiveRecord::Migration
  def change
   create_table :pet_sizes do |t|
     t.string :pet_size

     t.timestamps
    end
  end
end

