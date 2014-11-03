class PetsController < ApplicationController
  # GET /pets
  # GET /pets.json
  def index
    @pets = Pet.all

  end


  def show
    @pet = Pet.find(params[:id])

  end

  def new
    @pet = Pet.new
    @PetType = PetType.order('PetTypeName ASC')
  end

  # GET /pets/1/edit
  def edit
    @pet = Pet.find(params[:id])
    @PetType = PetType.order('PetTypeName ASC')
  end

  # POST /pets
  # POST /pets.json
  def create
    @pet = Pet.new(params[:pet])

     
      if @pet.save
      
      redirect_to action: "index", notice: 'Pet was successfully created.'
   
      else
       @PetType = PetType.order('PetTypeName ASC')
       render action: "new" 
     

    end
  end

  # PUT /pets/1
  # PUT /pets/1.json
  def update
    @pet = Pet.find(params[:id])

      if @pet.update_attributes(params[:pet])
        redirect_to action: "index", notice: 'Pet was successfully updated.'
     
      else
        @PetType = PetType.order('PetTypeName ASC')
        render action: "edit"
       
      end

  end

  # DELETE /pets/1
  # DELETE /pets/1.json
  def destroy
    @pet = Pet.find(params[:id])
    @pet.destroy

    redirect_to pets_url

   
  end
end
