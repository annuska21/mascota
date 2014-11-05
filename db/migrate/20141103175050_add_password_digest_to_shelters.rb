class AddPasswordDigestToShelters < ActiveRecord::Migration
  def change
    add_column :shelters, :password_digest, :string
  end
end
