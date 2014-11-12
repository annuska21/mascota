class Admin::PetTypeBreedsController < Admin::AdminController

  def index
    @pet_type_breeds = PetTypeBreed.all


  end

  def show
    @pet_type_breed = PetTypeBreed.find(params[:id])
  end

  def new
    @pet_type_breed = PetTypeBreed.new
    @pet_type = PetType.order('name ASC')

  end


  def edit
    @pet_type_breed = PetTypeBreed.find(params[:id])
    @pet_type = PetType.order('name ASC')
  end


  def create
    @pet_type_breed = PetTypeBreed.new(params[:pet_type_breed])


      if @pet_type_breed.save
        redirect_to action: "index", notice: 'El tipo de mascota se ha creado.'
        
      else
        @pet_type = PetType.order('name ASC')
        render action: "new"
        
      end
  end

  def update
    @pet_type_breed = PetTypeBreed.find(params[:id])


      if @pet_type_breed.update_attributes(params[:pet_type_breed])
        redirect_to action: "index", notice: 'El tipo de mascota se ha actualizado.'
        
      else
        @pet_type = PetType.order('name ASC')
        render action: "edit"

      end

  end


  def destroy
    @pet_type_breed = PetTypeBreed.find(params[:id])
    @pet_type_breed.destroy
    redirect_to pet_type_breeds_url


  end
end
