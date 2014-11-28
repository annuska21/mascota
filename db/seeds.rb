# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

HairType.delete_all
HairType.create(:name=>"liso")
HairType.create(:name=>"liso1")
HairType.create(:name=>"liso2")
HairType.create(:name=>"liso3")

PetSize.delete_all
PetSize.create(:name=>"pequeño")
PetSize.create(:name=>"mediano")
PetSize.create(:name=>"grande")


PetStatus.delete_all
refugio=PetStatus.create(:name=>"Refugio")
PetStatus.create(:name=>"Adoptada")
PetStatus.create(:name=>"Acogida")
PetStatus.create(:name=>"Baja")

PetType.delete_all
gato=PetType.create(:name=>"gato")
perro=PetType.create(:name=>"perro")
conejo=PetType.create(:name=>"conejo")


HairType.delete_all
HairType.create(:name=>"liso")

PetTypeBreed.delete_all
PetTypeBreed.create(:pet_type_id=>gato.id,:name=>'común')
PetTypeBreed.create(:pet_type_id=>perro.id,:name=>'doverman')
PetTypeBreed.create(:pet_type_id=>conejo.id,:name=>'belier')
PetTypeBreed.create(:pet_type_id=>gato.id,:name=>'siames')
PetTypeBreed.create(:pet_type_id=>perro.id,:name=>'pitbull')

PetTypeColour.delete_all
PetTypeColour.create(:name=>"azul")
PetTypeColour.create(:name=>"blanco")

Shelter.delete_all
shelter1=Shelter.create(:name=>'prueba', :password=>'123456', :email=>'test@test.com', :province=>"Madrid", :cif=>"1111")
Shelter.create(:name=>'prueba1',:password=>'123456', :email=>'test1@test.com', :province=>"Barcelona", :cif=>"2222")
Shelter.create(:name=>'prueba2',:password=>'123456', :email=>'test2@test.com', :province=>"Madrid", :cif=>"3333")

shelter1.carers.build(:name=>"career1", :last_name=>"shelter1", :locate=>true, :province=>"Valencia", :dni=>"14301804J")
shelter1.save

Pet.delete_all
Pet.create(
  :name=>'pumuki',
  :hair_type_id=>HairType.first.id,
  :pet_status_id=>refugio.id,
  :pet_size_id=>PetSize.first.id,
 #   :pet_type_id=>PetType.first.id,
  :shelter_id=>Shelter.first.id,
  :pet_type_colour_id=>PetTypeColour.first.id,
  :pet_type_breed_id=>PetTypeBreed.first.id
  )
Pet.create(
  :name=>'pumuki2',
  :hair_type_id=>HairType.first.id,
  :pet_status_id=>refugio.id,
  :pet_size_id=>PetSize.first.id,
 #   :pet_type_id=>PetType.first.id,
  :shelter_id=>Shelter.first.id,
  :pet_type_colour_id=>PetTypeColour.first.id,
  :pet_type_breed_id=>PetTypeBreed.first.id
  )
Pet.create(
  :name=>'pumuki3',
  :hair_type_id=>HairType.first.id,
  :pet_status_id=>refugio.id,
  :pet_size_id=>PetSize.first.id,
 #   :pet_type_id=>PetType.first.id,
  :shelter_id=>Shelter.first.id,
  :pet_type_colour_id=>PetTypeColour.first.id,
  :pet_type_breed_id=>PetTypeBreed.first.id
  )
Pet.create(
  :name=>'pumuki4',
  :hair_type_id=>HairType.first.id,
  :pet_status_id=>refugio.id,
  :pet_size_id=>PetSize.first.id,
 #   :pet_type_id=>PetType.first.id,
  :shelter_id=>Shelter.first.id,
  :pet_type_colour_id=>PetTypeColour.first.id,
  :pet_type_breed_id=>PetTypeBreed.first.id
  )
