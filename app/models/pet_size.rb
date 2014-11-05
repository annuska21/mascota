# == Schema Information
#
# Table name: pet_sizes
#
#  id         :integer          not null, primary key
#  pet_size   :string(255)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class PetSize < ActiveRecord::Base
  has_many :pets
  attr_accessible :pet_size
end
