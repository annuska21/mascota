class PetTypeBreed < ActiveRecord::Base
  belongs_to :pet_type
  validates :raza, :presence=>true
  attr_accessible :pet_type_id, :raza
end
