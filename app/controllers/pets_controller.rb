class PetsController < ApplicationController
  
  
  def index
    @pets = Pet.en_adopcion
 
  end


  def show
    @pet = Pet.find(params[:id])

  end

  def new
    @pet = Pet.new({:shelter_id => @shelter.id})
    @pet_type = PetType.order('PetTypeName ASC')
    @hair_type = HairType.order('name ASC')
    @carer = Carer.order('nombre ASC')
    @shelter = Shelter.order('nombre ASC')
    @pet_size = PetSize.order('pet_size ASC')
    @pet_status = PetStatus.order('estado DESC')
  end

  def edit
    @pet = Pet.find(params[:id])
    @pet_type = PetType.order('PetTypeName ASC')
    @hair_type = HairType.order('name ASC')
    @carer = Carer.order('nombre ASC')
    @shelter = Shelter.order('nombre ASC')
    @pet_size = PetSize.order('pet_size ASC')
    @pet_status = PetStatus.order('estado ASC')
  end


  def create
    @pet = Pet.new(params[:pet])

     
      if @pet.save
      
      redirect_to(:action => "index", :shelter_id => @shelter.id)
   
      else
       @pet_type = PetType.order('PetTypeName ASC')
       @hair_type = HairType.order('name ASC')
       @carer = Carer.order('nombre ASC')
       @shelter = Shelter.order('nombre ASC')
       @pet_size = PetSize.order('pet_size ASC')
       @pet_status = PetStatus.order('estado ASC')
       render action: "new" 
     

    end
  end

  def update
    @pet = Pet.find(params[:id])

      if @pet.update_attributes(params[:pet])
        redirect_to action: "index", :shelter_id => @shelter.id, notice: 'Actualizado.'
     
      else
        @pet_type = PetType.order('PetTypeName ASC')
        @hair_type = HairType.order('name ASC')
        @carer = Carer.order('nombre ASC')
        @shelter = Shelter.order('nombre ASC')
        @pet_size = PetSize.order('pet_size ASC')
        @pet_status = PetStatus.order('estado ASC')
        render action: "edit"
       
      end

  end

  def destroy
    @pet = Pet.find(params[:id])
    @pet.destroy

    redirect_to action: "index", :shelter_id => @shelter.id

   
  end



end
