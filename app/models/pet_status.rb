class PetStatus < ActiveRecord::Base
  has_many :pets
  attr_accessible :estado
end
