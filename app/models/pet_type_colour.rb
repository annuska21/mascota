# == Schema Information
#
# Table name: pet_type_colours
#
#  id          :integer          not null, primary key
#  color       :string(255)
#  descripcion :text
#  pet_type_id :integer
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class PetTypeColour < ActiveRecord::Base
  belongs_to :pet_type
  attr_accessible :color, :descripcion, :pet_type_id
end
