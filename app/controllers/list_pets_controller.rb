class ListPetsController < ApplicationController
  

  
  def index

    begin
      @filterrific = Filterrific.new(Pet, params[:filterrific] || session[:filterrific_pets])

      @filterrific.select_options = {
        with_pet_type_colour_id: PetTypeColour.options_for_select,
        with_pet_type_breed_id: PetTypeBreed.options_for_select,
        with_pet_size_id: PetSize.options_for_select,
        with_shelter_id: Shelter.options_for_select,
        with_carer_id: Carer.options_for_select,
        with_hair_type_id: HairType.options_for_select,
        with_pet_type_ids: PetType.options_for_select,
        with_province: Province.options_for_select,
        with_gender: Gender.options_for_select,
        with_age: Age.options_for_select
      }
        
      @pets = Pet.filterrific_find(@filterrific).en_adopcion.page(params[:page])
      @pet_type_colours = PetTypeColour.all
      session[:filterrific_pets] = @filterrific.to_hash
      @pet = Pet.filterrific_find(@filterrific).en_adopcion
    
    rescue ActiveRecord::RecordNotFound => e
      # There is an issue with the persisted param_set. Reset it.
      puts "Debes resetear los filtros: #{ e.message }"
      redirect_to(action: :reset_filterrific, format: :html) and return
    end
  end

  def reset_filterrific
    # Clear session persistence
    session[:filterrific_pets] = nil
    # Redirect back to the index action for default filter settings.
    redirect_to action: :index
  end

  def show
    @pet = Pet.find(params[:id])

  end


end
