class TestController < ApplicationController

def index
    @pet_types  = PetType.all
    @pet_type_breeds = PetTypeBreed.all

  end

  def update_breeds
    # updates artists and songs based on genre selected
    pet_type = PetType.find(params[:pet_type_id])
    # map to name and id for use in our options_for_select
    @pet_type_breeds = pet_type.pet_type_breeds.map{|a| [a.name, a.id]}.insert(0, "Select an breed")
   
  end
end