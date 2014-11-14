class Administration::SheltersController < Administration::AdministrationController

def index
 @shelter = current_shelter

 @pet_to_adopted = @shelter.pets.en_adopcion
 @pet_in_shelter = @shelter.pets.refugio
 @pet_adopted = @shelter.pets.adoptada
 @pet_with_carer = @shelter.pets.acogida
 
end

  def show
   # @shelter = Shelter.find(params[:id])

  end

  def edit
    @shelter = current_shelter
  end

  
  def update
     @shelter = current_shelter


      if @shelter.update_attributes(params[:shelter])
        redirect_to action:"index", notice: 'El refugio se ha modificado.'
      
      else
        render action: "edit"
       
      end

  end
  

end
