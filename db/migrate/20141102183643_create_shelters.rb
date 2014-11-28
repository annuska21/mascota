class CreateShelters < ActiveRecord::Migration
  def change
    create_table :shelters do |t|
     # t.string :nombre
    #   t.string :usuario
    #   t.integer :telefono
     #  t.string :web
     #  t.text :requisitos_adopcion
     #  t.text :descripcion_asociacion
     #  t.boolean :acogida
     #  t.text :detalles_acogida
     #  t.text :informacion_donaciones
     #  t.boolean :voluntariado
     #  t.boolean :detalles_voluntariado
    #   t.string :calle
    #   t.string :provincia
    #   t.integer :cp

      t.string :name
      t.integer :phone
      t.string :cif
      t.string :web
      t.text :adoption_requirement
      t.text :shelter_description
      t.boolean :carer_possibility
      t.text :carer_detail
      t.text :donation_information
      t.boolean :voluntary
      t.text :voluntary_detail
      t.string :via
      t.string :street
      t.integer :postal_code
      t.string :town
      t.string :province
      t.string :country, :default => "España"
      t.timestamps
    end
  end
end
