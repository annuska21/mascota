class AddPictureToPets < ActiveRecord::Migration
  def change
    add_column :pets, :picture, :string, :default => "sin_imagen.png"
  end
end
