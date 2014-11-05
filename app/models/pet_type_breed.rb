# == Schema Information
#
# Table name: pet_type_breeds
#
#  id          :integer          not null, primary key
#  raza        :string(255)
#  pet_type_id :integer
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class PetTypeBreed < ActiveRecord::Base
  belongs_to :pet_type
  validates :raza, :presence=>true
  attr_accessible :pet_type_id, :raza
end
