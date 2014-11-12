# == Schema Information
#
# Table name: pet_types
#
#  id          :integer          not null, primary key
#  name :string(255)
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class PetType < ActiveRecord::Base
  has_many :pets, through: :pet_type_breed
  has_many :pet_type_breeds
# has_many :colours

  def self.options_for_select
   order('LOWER(name)').map { |e| [e.name, e.id] }
  end
  attr_accessible :name
end
