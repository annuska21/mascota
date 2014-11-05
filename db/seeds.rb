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
PetSize.create(:pet_size=>"pequeño")
PetSize.create(:pet_size=>"mediano")
PetSize.create(:pet_size=>"grande")


PetStatus.delete_all
refugio=PetStatus.create(:estado=>"En Refugio")
PetStatus.create(:estado=>"Adoptadas")
PetStatus.create(:estado=>"Acogidas")
PetStatus.create(:estado=>"Bajas")

PetType.delete_all
gato=PetType.create(:PetTypeName=>"gato")
perro=PetType.create(:PetTypeName=>"perro")
conejo=PetType.create(:PetTypeName=>"conejo")


HairType.delete_all
HairType.create(:name=>"liso")

PetTypeBreed.delete_all
PetTypeBreed.create(:pet_type_id=>gato.id,:raza=>'común')
PetTypeBreed.create(:pet_type_id=>perro.id,:raza=>'doverman')
PetTypeBreed.create(:pet_type_id=>conejo.id,:raza=>'melier')
PetTypeBreed.create(:pet_type_id=>gato.id,:raza=>'siames')
PetTypeBreed.create(:pet_type_id=>perro.id,:raza=>'pitbull')

PetTypeColour.delete_all
PetTypeColour.create(:color=>"marron",:pet_type_id=>gato.id)


Shelter.delete_all
Shelter.create(:nombre=>'prueba',:usuario=>'prueba',:password=>'123456', :email=>'test@test.com')
Shelter.create(:nombre=>'prueba1',:usuario=>'prueba1',:password=>'123456', :email=>'test1@test.com')
Shelter.create(:nombre=>'prueba2',:usuario=>'prueba2',:password=>'123456', :email=>'test2@test.com')

Pet.delete_all
Pet.create(
  :nombre=>'pumuki',
  :hair_type_id=>HairType.first.id,
  :pet_status_id=>refugio.id,
  :pet_size_id=>PetSize.first.id,
  :pet_type_id=>PetType.first.id,
  :shelter_id=>Shelter.first.id

  )