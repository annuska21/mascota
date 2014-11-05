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

class Pet < ActiveRecord::Base
  belongs_to :hair_type
  belongs_to :pet_status
  belongs_to :pet_type
  belongs_to :pet_size
  belongs_to :shelter
  belongs_to :carer

  scope :en_refugio, lambda { where(:pet_status_id => PetStatus.all[0]) }
  scope :adoptadas, lambda { where(:pet_status_id => PetStatus.all[1]) }
  scope :acogidas, lambda { where(:pet_status_id => PetStatus.all[2]) }
  scope :bajas, lambda { where(:pet_status_id => PetStatus.all[3]) }
  scope :en_adopcion, Pet.en_refugio | Pet.acogidas

  mount_uploader :picture, PictureUploader
  attr_accessible :picture, :carer_id, :comentarios, :fecha_nacimiento, :hair_type_id, :necesidades_especiales, :nombre, :pet_size_id, :pet_status_id, :pet_type_id, :shelter_id

 validate  :picture_size


  private

    def picture_size
      if picture.size > 5.megabytes
        errors.add(:picture, "should be less than 5MB")
      end
    end


end
