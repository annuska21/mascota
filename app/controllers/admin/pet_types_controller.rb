class Admin::PetTypesController < Admin::AdminController

  def index
    @pet_types = PetType.all

  end

  def show
    @pet_type = PetType.find(params[:id])

  end

  def new
    @pet_type = PetType.new

  end


  def edit
    @pet_type = PetType.find(params[:id])
  end

  def create
    @pet_type = PetType.new(params[:pet_type])

 
      if @pet_type.save
        redirect_to action: "index", notice: 'La mascota se ha creado.'
     
      else
        render action: "new" 
     
      end

  end


  def update
    @pet_type = PetType.find(params[:id])

 
      if @pet_type.update_attributes(params[:pet_type])
        redirect_to action: "index", notice: 'Pet type was successfully updated.'
  
      else
        render action: "edit"
     
      end

  end

  # DELETE /pet_types/1
  # DELETE /pet_types/1.json
  def destroy
    @pet_type = PetType.find(params[:id])
    @pet_type.destroy


    redirect_to pet_types_url
   

  end
end
