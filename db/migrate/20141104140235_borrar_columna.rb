class BorrarColumna < ActiveRecord::Migration
  def up
    remove_column :shelters, :password
  end

  def down
    add_column :shelters, :password, :string
  end
end
