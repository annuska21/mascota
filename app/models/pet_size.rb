class PetSize < ActiveRecord::Base
  has_many :pets
  attr_accessible :pet_size
end
