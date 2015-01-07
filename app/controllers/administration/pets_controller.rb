class Administration::PetsController < Administration::AdministrationController

  before_filter :find_shelter


  def index
    
  if (params[:pet_status] && PetStatus.all.collect(&:name).include?(params[:pet_status][:name]))
       @pets = @shelter.pets.search(params[:search]).send(params[:pet_status][:name].downcase).paginate(:page => params[:page])
    else
      @pets = @shelter.pets.search(params[:search]).sorted.paginate(:page => params[:page])
    end
    
  end
  



  def new
  #  @pet = Pet.new({:shelter_id => @shelter.id})
    @pet = @shelter.pets.build 
    @pet_type = PetType.order('name ASC')
    @pet_types  = PetType.all
    @pet_type_breed = PetTypeBreed.order('name ASC')
    @pet_type_breeds = PetTypeBreed.all
    @pet_type_colour = PetTypeColour.order('name ASC')
    @hair_type = HairType.order('name ASC')
    @carer = Carer.where(:shelter_id => @shelter.id).order('name ASC')
    @pet_size = PetSize.order('name ASC')
    @pet_status = PetStatus.order('name DESC')
    @pet_type_colours = PetTypeColour.all
  end

  def edit
    @pet = Pet.find(params[:id])
 
    @pet_type = PetType.order('name ASC')
    @pet_types  = PetType.all
    @pet_type_breed = PetTypeBreed.order('name ASC')
    @pet_type_breeds = PetTypeBreed.all
    @pet_type_colour = PetTypeColour.order('name ASC')
    @hair_type = HairType.order('name ASC')
    @carer = Carer.where(:shelter_id => @shelter.id).order('name ASC')
    @pet_size = PetSize.order('name ASC')
    @pet_status = PetStatus.order('name ASC')
    @pet_type_colours = PetTypeColour.all
  end


  def create
  #  @pet = Pet.new(params[:pet])
    @pet = @shelter.pets.new(params[:pet])
     
      if @pet.save
      
      redirect_to(:action => "index", :shelter_id => @shelter.id)
   
      else
       @pet_type = PetType.order('name ASC')
       @pet_types  = PetType.all
       @pet_type_breed = PetTypeBreed.order('name ASC')
       @pet_type_colour = PetTypeColour.order('name ASC')
       @pet_type_colours = PetTypeColour.order('name ASC')
       @hair_type = HairType.order('name ASC')
       @carer = Carer.where(:shelter_id => @shelter.id).order('name ASC')
       @pet_size = PetSize.order('name ASC')
       @pet_status = PetStatus.order('name ASC')
       pet_type = PetType.find(params[:pet_type_id])
       @pet_type_breeds = pet_type.pet_type_breeds.map{|a| [a.name, a.id]}.insert(0, "Selecciona una raza")
     
      render action: "new" 
    end
  end
  def update_breeds
    # updates artists and songs based on genre selected
    pet_type = PetType.find(params[:pet_type_id])
    # map to name and id for use in our options_for_select
    @pet_type_breeds = pet_type.pet_type_breeds.map{|a| [a.name, a.id]}.insert(0, "Select an breed")
   
  end

  def update
    @pet = Pet.find(params[:id])
   

      if @pet.update_attributes(params[:pet])
        redirect_to action: "index", :shelter_id => @shelter.id, notice: 'Actualizado.'
     
      else
        @pet_type = PetType.order('name ASC')
        @pet_types  = PetType.all
        pet_type = PetType.find(params[:pet_type_id])
        @pet_type_breeds = pet_type.pet_type_breeds.map{|a| [a.name, a.id]}.insert(0, "Select an breed")
        @pet_type_breed = PetTypeBreed.order('name ASC')        
        @pet_type_colour = PetTypeColour.order('name ASC')
        @pet_type_colours = PetTypeColour.order('name ASC')
        @hair_type = HairType.order('name ASC')
        @carer = Carer.where(:shelter_id => @shelter.id).order('name ASC')
        @pet_size = PetSize.order('name ASC')
        @pet_status = PetStatus.order('name ASC')
        render action: "edit"
       
      end

  end

  def destroy
    @pet = Pet.find(params[:id])
    @pet.destroy

    redirect_to action: "index", :shelter_id => @shelter.id

   
  end

  
 def find_shelter

    if params[:shelter_id]
      @shelter = Shelter.find(params[:shelter_id])
      
    else

    end
  end

 

end
