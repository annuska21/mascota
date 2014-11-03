# == Schema Information
#
# Table name: hair_types
#
#  id         :integer          not null, primary key
#  name       :string(255)      not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class HairType < ActiveRecord::Base
  has_many :pets
  attr_accessible :name

  validates :name, :presence=>true

end
