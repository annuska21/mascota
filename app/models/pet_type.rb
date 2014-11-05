# == Schema Information
#
# Table name: pet_types
#
#  id          :integer          not null, primary key
#  PetTypeName :string(255)
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class PetType < ActiveRecord::Base
  has_many :pets
  has_many :breeds
  has_many :colours
  attr_accessible :PetTypeName
end
