class Shelter < ActiveRecord::Base
  has_many :animals
  attr_accessible :acogida, :calle, :cp, :descripcion_asociacion, :detalles_acogida, :detalles_voluntariado, :email, :informacion_donaciones, :nombre, :password, :provincia, :requisitos_adopcion, :telefono, :usuario, :voluntariado, :web
end
