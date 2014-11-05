class Shelter < ActiveRecord::Base
  has_many :pets
  validates :nombre, presence: true
  validates :usuario, presence:true, uniqueness: true

  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :email, presence: true, length: { maximum: 255 },
                    format: { with: VALID_EMAIL_REGEX },
                    uniqueness: true
  has_secure_password
  attr_accessible :acogida, :calle, :cp, :descripcion_asociacion, :detalles_acogida, :detalles_voluntariado, :email, :informacion_donaciones, :nombre, :password, :provincia, :requisitos_adopcion, :telefono, :usuario, :voluntariado, :web
end
