# == Schema Information
#
# Table name: carers
#
#  id          :integer          not null, primary key
#  nombre      :string(255)
#  apellidos   :string(255)
#  email       :string(255)
#  telefono    :integer
#  localizar   :boolean
#  calle       :string(255)
#  provincia   :string(255)
#  cp          :integer
#  comentarios :text
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class Carer < ActiveRecord::Base
  has_many :pets
  attr_accessible :apellidos, :calle, :comentarios, :cp, :email, :localizar, :nombre, :provincia, :telefono
end
