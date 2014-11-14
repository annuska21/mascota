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
  scope :sorted, lambda { order("carers.last_name ASC") }
  
  def self.search(search)  
      if search  
        where('name LIKE ?', "%#{search}%")  
      else  
        scoped  
      end  
    end  
  self.per_page = 10

    def name_firstname
    [name, last_name].compact.join(', ')
  end

  attr_accessible :last_name, :street, :commentary, :postal_code, :email, :locate, :name, :province, :phone, :shelter_id
end
