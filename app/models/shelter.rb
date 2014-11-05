# == Schema Information
#
# Table name: shelters
#
#  id                     :integer          not null, primary key
#  nombre                 :string(255)
#  usuario                :string(255)
#  email                  :string(255)
#  telefono               :integer
#  web                    :string(255)
#  requisitos_adopcion    :text
#  descripcion_asociacion :text
#  acogida                :boolean
#  detalles_acogida       :text
#  informacion_donaciones :text
#  voluntariado           :boolean
#  detalles_voluntariado  :text
#  calle                  :string(255)
#  provincia              :string(255)
#  cp                     :integer
#  created_at             :datetime         not null
#  updated_at             :datetime         not null
#  password_digest        :string(255)
#

class Shelter < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :token_authenticatable, :confirmable,
  # :lockable, :timeoutable and :omniauthable, :registerable,
  #:recoverable, :rememberable, :trackable, :validatable
  devise :database_authenticatable

  # Setup accessible (or protected) attributes for your model
  attr_accessible :email, :password, :password_confirmation, :remember_me

  has_many :pets
  validates :nombre, presence: true
  validates :usuario, presence:true, uniqueness: true

  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :email, presence: true, length: { maximum: 255 },
                    format: { with: VALID_EMAIL_REGEX },
                    uniqueness: true
                    
  attr_accessible :acogida, :calle, :cp, :descripcion_asociacion, :detalles_acogida, :detalles_voluntariado, :email, :informacion_donaciones, :nombre, :provincia, :requisitos_adopcion, :telefono, :usuario, :voluntariado, :web
end
