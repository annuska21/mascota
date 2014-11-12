class ListPetsController < ApplicationController
  

  
  def index
 
      @filterrific = Filterrific.new(Pet, params[:filterrific] || session[:filterrific_pets])

      @filterrific.select_options = {
      with_pet_type_colour_id: PetTypeColour.options_for_select,
      with_pet_type_breed_id: PetTypeBreed.options_for_select,
      with_pet_size_id: PetSize.options_for_select,
      with_shelter_id: Shelter.options_for_select,
      with_carer_id: Carer.options_for_select,
      with_hair_type_id: HairType.options_for_select,
      with_pet_status_id: PetStatus.options_for_select,
      with_pet_type_ids: PetType.options_for_select,
      en_adopcion: Pet.en_adopcion
    }

      @pets = Pet.filterrific_find(@filterrific).page(params[:page])

      session[:filterrific_pets] = @filterrific.to_hash

    
    rescue ActiveRecord::RecordNotFound => e
        # There is an issue with the persisted param_set. Reset it.
        puts "Had to reset filterrific params: #{ e.message }"
        redirect_to(action: :reset_filterrific, format: :html) and return
      end
      def reset_filterrific
    # Clear session persistence
    session[:filterrific_pets] = nil
    # Redirect back to the index action for default filter settings.
    redirect_to action: :index
  end
  end


  def show
    @pet = Pet.find(params[:id])

  end

def find_shelter
    if params[:shelter_id]
      @shelter = Shelter.find(params[:shelter_id])
end


end
