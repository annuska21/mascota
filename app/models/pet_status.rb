# == Schema Information
#
# Table name: pet_statuses
#
#  id         :integer          not null, primary key
#  name     :string(255)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class PetStatus < ActiveRecord::Base
  has_many :pets
  
  def self.options_for_select
   order('LOWER(name)').map { |e| [e.name, e.id] }
  end

  attr_accessible :name
end
