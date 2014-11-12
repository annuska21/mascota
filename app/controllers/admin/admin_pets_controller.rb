class Admin::AdminPetsController < Admin::AdminController
  
  
  def index
    @pets = Pet.all
 
  end


  def show
    @pet = Pet.find(params[:id])

  end

  def new
    @pet = Pet.new
    @pet_type = PetType.order('name ASC')
    @pet_type_breed = PetTypeBreed.order('name ASC')
    @pet_type_colour = PetTypeColour.order('name ASC')
    @hair_type = HairType.order('name ASC')
    @carer = Carer.order('name ASC')
    @shelter = Shelter.order('name ASC')
    @pet_size = PetSize.order('name ASC')
    @pet_status = PetStatus.order('name DESC')
  end

  def edit
    @pet = Pet.find(params[:id])
    @pet_type = PetType.order('name ASC')
    @pet_type_breed = PetTypeBreed.order('name ASC')
    @pet_type_colour = PetTypeColour.order('name ASC')
    @hair_type = HairType.order('name ASC')
    @carer = Carer.order('name ASC')
    @shelter = Shelter.order('name ASC')
    @pet_size = PetSize.order('name ASC')
    @pet_status = PetStatus.order('name ASC')
  end


  def create
    @pet = Pet.new(params[:pet])

     
      if @pet.save
      
      redirect_to(:action => "index")
   
      else
       @pet_type = PetType.order('name ASC')
       @pet_type_breed = PetTypeBreed.order('name ASC')
       @pet_type_colour = PetTypeColour.order('name ASC')
       @hair_type = HairType.order('name ASC')
       @carer = Carer.order('name ASC')
       @shelter = Shelter.order('name ASC')
       @pet_size = PetSize.order('name ASC')
       @pet_status = PetStatus.order('name ASC')
       render action: "new" 
     

    end
  end

  def update
    @pet = Pet.find(params[:id])

      if @pet.update_attributes(params[:pet])
        redirect_to action: "index", notice: 'Actualizado.'
     
      else
        @pet_type = PetType.order('name ASC')
        @pet_type_breed = PetTypeBreed.order('name ASC')
        @pet_type_colour = PetTypeColour.order('name ASC')
        @hair_type = HairType.order('name ASC')
        @carer = Carer.order('name ASC')
        @shelter = Shelter.order('name ASC')
        @pet_size = PetSize.order('name ASC')
        @pet_status = PetStatus.order('name ASC')
        render action: "edit"
       
      end

  end

  def destroy
    @pet = Pet.find(params[:id])
    @pet.destroy

    redirect_to action: "index"

   
  end



end
