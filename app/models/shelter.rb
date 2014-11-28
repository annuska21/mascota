# == Schema Information
#
# Table name: shelters
#
#  id                     :integer          not null, primary key
#  name                 :string(255)
#  usuario                :string(255)
#  email                  :string(255)
#  phone               :integer
#  web                    :string(255)
#  adoption_requirement    :text
#  shelter_description :text
#  carer_possibility                :boolean
#  detalles_carer_possibility       :text
#  donation_information :text
#  voluntary           :boolean
#  voluntary_detail  :text
#  street                  :string(255)
#  province              :string(255)
#  postal_code                     :integer
#  created_at             :datetime         not null
#  updated_at             :datetime         not null
#  password_digest        :string(255)
#

class Shelter < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :token_authenticatable, :confirmable,
  # :lockable, :timeoutable and :omniauthable, :registerable,
  #:recoverable, :rememberable, :trackable, :validatable
  devise :database_authenticatable, :registerable

  # Setup accessible (or protected) attributes for your model
  attr_accessible :email, :password, :password_confirmation, :remember_me
  has_many :pets, dependent: :destroy
  has_many :carers, dependent: :destroy
  validates :name, presence: true
  validates :cif, presence: true
  validates :province, presence: true

  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :email, presence: true, length: { maximum: 255 },
                    format: { with: VALID_EMAIL_REGEX },
                    uniqueness: true
                    
  geocoded_by :address
  after_validation :geocode

  self.per_page = 10

  VIA_TYPES = ["Calle", "Avenida", "Carretera","Camino", "Bulevar", "Plaza"]

  def address
    [street, postal_code, province, country].compact.join(', ')
  end

  def self.options_for_select
    order('LOWER(name)').map { |e| [e.name, e.id] }
  end 

  attr_accessible :via, :town, :cif, :street, :postal_code, :province, :country, :latitude, :longitude, :carer_possibility, :address, :shelter_description, :carer_detail, :voluntary_detail, :email, :donation_information, :name, :adoption_requirement, :phone, :voluntary, :web
end
