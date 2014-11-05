# == Schema Information
#
# Table name: pet_type_breeds
#
#  id          :integer          not null, primary key
#  raza        :string(255)
#  pet_type_id :integer
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

require 'test_helper'

class PetTypeBreedTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
