# == Schema Information
#
# Table name: pets
#
#  id                     :integer          not null, primary key
#  hair_type_id           :integer
#  pet_status_id          :integer
#  pet_size_id            :integer
#  pet_type_id            :integer
#  shelter_id             :integer
#  carer_id               :integer
#  nombre                 :string(255)
#  fecha_nacimiento       :date
#  comentarios            :text
#  necesidades_especiales :text
#  created_at             :datetime         not null
#  updated_at             :datetime         not null
#  picture                :string(255)
#

require 'test_helper'

class PetTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
