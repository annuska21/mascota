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

require 'test_helper'

class PetTypeColourTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
