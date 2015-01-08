# == Schema Information
#
# Table name: carers
#
#  id          :integer          not null, primary key
#  name      :string(255)
#  last_name   :string(255)
#  email       :string(255)
#  phone    :integer
#  locate   :boolean
#  street       :string(255)
#  province   :string(255)
#  postal_code          :integer
#  commentary :text
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class Carer < ActiveRecord::Base

  def self.options_for_select
    order('LOWER(name)').map { |e| [e.name, e.id] }
  end 

  has_many :pets
  belongs_to :shelter
  validates :name, presence: true
  validates :last_name, presence: true
  validates :dni, presence: true, length: { is: 9 }
  validates :postal_code, length: { is: 5 }
  validates :province, presence: true
  self.per_page = 15
  scope :sorted, lambda { order("carers.last_name ASC") }
 
  validates_format_of :dni, :with => /\A[0-9]{8}[A-Za-z]\Z/, :on => :update, :message => "El DNI tiene que tener un formato como el siguiente: 12345678A"
  validate :dni_letter_must_match_number
  
  def dni_letter_must_match_number
    if "TRWAGMYFPDXBNJZSQVHLCKE"[dni[0..7].to_i % 23].chr != dni[8]
      errors.add(:dni, "La letra no coincide con el número")
    end
  end

  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :email, presence: true, length: { maximum: 255 },
                    format: { with: VALID_EMAIL_REGEX }
  
  VIA_TYPES = ["Calle", "Avenida", "Carretera","Camino", "Bulevar", "Plaza"]
  
  def self.search(search)  
      if search  
        where('name LIKE ?', "%#{search}%")  
      else  
        scoped  
      end  
    end  


    def name_firstname
    [last_name, name].compact.join(', ')
  end

  attr_accessible :inactive, :via, :town, :dni, :last_name, :street, :commentary, :postal_code, :email, :locate, :name, :province, :phone, :shelter_id
end
