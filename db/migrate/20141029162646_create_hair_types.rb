class CreateHairTypes < ActiveRecord::Migration
  def change
    create_table :hair_types do |t|
      t.string :name, :null=>false

      t.timestamps
    end
  end
end
