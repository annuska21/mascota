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
#  name                 :string(255)
#  birthday       :date
#  commentary            :text
#  special_need :text
#  created_at             :datetime         not null
#  updated_at             :datetime         not null
#  picture                :string(255)
#

class Pet < ActiveRecord::Base
 
  
   filterrific(
 # default_settings: {:sorted_by => 'created_at_desc'},
  filter_names: [
    :with_shelter_id,
    :with_pet_size_id,
    :with_pet_type_colour_id,
    :with_pet_type_breed_id,
    :with_hair_type_id,
    :with_carer_id,
    :with_pet_status_id,
    :with_pet_type_ids
  ])



  belongs_to :hair_type
  belongs_to :pet_status
  belongs_to :pet_size
  belongs_to :shelter
  belongs_to :carer
  belongs_to :pet_type_breed
  belongs_to :pet_type_colour
  has_one :pet_type, through: :pet_type_breed

  scope :refugio, lambda { where(:pet_status_id => PetStatus.all[0]) }
  scope :adoptada, lambda { where(:pet_status_id => PetStatus.all[1]) }
  scope :acogida, lambda { where(:pet_status_id => PetStatus.all[2]) }
  scope :baja, lambda { where(:pet_status_id => PetStatus.all[3]) }
  scope :en_adopcion, Pet.refugio | Pet.acogida

  scope :sorted, lambda { order("pets.name ASC") }

  scope :with_pet_size_id, lambda { |pet_size_ids|
   where(:pet_size_id => [*pet_size_ids])
  }

  scope :with_hair_type_id, lambda { |hair_type_ids|
    where(:hair_type_id => [*hair_type_ids])
  }
      scope :with_pet_status_id, lambda { |pet_status_ids|
     where(:pet_status_id => [*pet_status_ids])
  }
  #where(:pet_status_id => 0) | where(:pet_status_id => 2)
    scope :with_pet_type_colour_id, lambda { |pet_type_colour_ids|
     where(:pet_type_colour_id => [*pet_type_colour_ids])
  }
    scope :with_pet_type_breed_id, lambda { |pet_type_breed_ids|
    where(:pet_type_breed_id => [*pet_type_breed_ids])
  }
  scope :with_shelter_id, lambda { |shelter_ids|
    where(:shelter_id => [*shelter_ids])
  }
  scope :with_carer_id, lambda { |carer_ids|
   where(:carer_id => [*carer_ids])
  }
 

  scope :with_pet_type_ids, lambda{ |pet_type_ids|
  # get a reference to the join table
 # role_assignments = RoleAssignment.arel_table
  pet_type_breeds = PetTypeBreed.arel_table
  # get a reference to the filtered table
  #students = Student.arel_table
  pets = Pet.arel_table
  # let AREL generate a complex SQL query
  where(
    PetTypeBreed \
      .where(pet_type_breeds[:pet_id].eq(pets[:id])) \
      .where(pet_type_breeds[:pet_type_id].in([*pet_type_ids].map(&:to_i))) \
      .exists
  )
}
  self.per_page = 10

  attr_accessible :gender, :pet_type_breed_id, :pet_type_colour_id, :picture, :carer_id, :commentary, :birthday, :hair_type_id, :special_need, :name, :pet_size_id, :pet_status_id, :shelter_id

 mount_uploader :picture, PictureUploader

 validate  :picture_size

  GENDER_TYPES = ["Desconocido", "Hembra", "Macho"]

  def self.search(search)  
      if search  
        where('name LIKE ?', "%#{search}%")  
      else  
        scoped  
      end  
    end  

  private

    def picture_size
      if picture.size > 5.megabytes
        errors.add(:picture, "should be less than 5MB")
      end
    end


end
