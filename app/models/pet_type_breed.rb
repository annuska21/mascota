# == Schema Information
#
# Table name: pet_type_breeds
#
#  id          :integer          not null, primary key
#  name        :string(255)
#  pet_type_id :integer
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class PetTypeBreed < ActiveRecord::Base
  has_many :pets
  belongs_to :pet_type



  validates :name, :presence=>true

  def self.options_for_select
    order('LOWER(name)').map { |e| [e.name, e.id] }
  end 
  
  attr_accessible :pet_type_id, :name, :pet_type
end
