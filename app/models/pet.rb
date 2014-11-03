class Pet < ActiveRecord::Base
  belongs_to :hair_type
  belongs_to :pet_status
  belongs_to :pet_type
  belongs_to :pet_size
  belongs_to :shelter
  belongs_to :carer
  attr_accessible :carer_id, :comentarios, :fecha_nacimiento, :hair_type_id, :necesidades_especiales, :nombre, :pet_size_id, :pet_status_id, :pet_type_id, :shelter_id
end
