# == Schema Information
#
# Table name: carers
#
#  id          :integer          not null, primary key
#  nombre      :string(255)
#  apellidos   :string(255)
#  email       :string(255)
#  telefono    :integer
#  localizar   :boolean
#  calle       :string(255)
#  provincia   :string(255)
#  cp          :integer
#  comentarios :text
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

require 'test_helper'

class CarerTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
