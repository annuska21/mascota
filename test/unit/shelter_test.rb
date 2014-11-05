# == Schema Information
#
# Table name: shelters
#
#  id                     :integer          not null, primary key
#  nombre                 :string(255)
#  usuario                :string(255)
#  email                  :string(255)
#  telefono               :integer
#  web                    :string(255)
#  requisitos_adopcion    :text
#  descripcion_asociacion :text
#  acogida                :boolean
#  detalles_acogida       :text
#  informacion_donaciones :text
#  voluntariado           :boolean
#  detalles_voluntariado  :text
#  calle                  :string(255)
#  provincia              :string(255)
#  cp                     :integer
#  created_at             :datetime         not null
#  updated_at             :datetime         not null
#  password_digest        :string(255)
#

require 'test_helper'

class ShelterTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
