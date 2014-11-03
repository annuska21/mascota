class PetTypeColour < ActiveRecord::Base
  belongs_to :pet_type
  attr_accessible :color, :descripcion, :pet_type_id
end
