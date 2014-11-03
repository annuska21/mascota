class PetType < ActiveRecord::Base
  has_many :pets
  has_many :breeds
  has_many :colours
  attr_accessible :PetTypeName
end
