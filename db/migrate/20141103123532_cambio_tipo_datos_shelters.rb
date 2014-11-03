class CambioTipoDatosShelters < ActiveRecord::Migration
  def up
    change_column("shelters", "detalles_voluntariado", :text)
  end

  def down
    change_column("shelters", "detalles_voluntariado", :boolean)
  end
end
