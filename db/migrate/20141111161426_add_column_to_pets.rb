class AddColumnToPets < ActiveRecord::Migration
  def change
    add_column :pets, :gender, :string, :default => "Desconocido"
  end
end
