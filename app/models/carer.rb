class Carer < ActiveRecord::Base
  has_many :pets
  attr_accessible :apellidos, :calle, :comentarios, :cp, :email, :localizar, :nombre, :provincia, :telefono
end
