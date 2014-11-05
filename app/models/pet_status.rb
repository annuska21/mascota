# == Schema Information
#
# Table name: pet_statuses
#
#  id         :integer          not null, primary key
#  estado     :string(255)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class PetStatus < ActiveRecord::Base
  has_many :pets
  attr_accessible :estado
end
