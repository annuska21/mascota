class Admin::PetSizesController < Admin::AdminController
  # GET /pet_sizes
  # GET /pet_sizes.json
  def index
    @pet_sizes = PetSize.all


  end

  # GET /pet_sizes/1
  # GET /pet_sizes/1.json
  def show
    @pet_size = PetSize.find(params[:id])

  end

  # GET /pet_sizes/new
  # GET /pet_sizes/new.json
  def new
    @pet_size = PetSize.new


  end

  # GET /pet_sizes/1/edit
  def edit
    @pet_size = PetSize.find(params[:id])
  end

  # POST /pet_sizes
  # POST /pet_sizes.json
  def create
    @pet_size = PetSize.new(params[:pet_size])

    respond_to do |format|
      if @pet_size.save
        redirect_to action: "index", notice: 'El tamaño de mascota ha sido creado.'
      
      else
        render action: "new"
       
      end
    end
  end

  def update
    @pet_size = PetSize.find(params[:id])


      if @pet_size.update_attributes(params[:pet_size])
        redirect_to action: "index", notice: 'El tamaño de mascota se ha actualizado.'
       
      else
        render action: "edit"

      end

  end

  def destroy
    @pet_size = PetSize.find(params[:id])
    @pet_size.destroy
    redirect_to pet_sizes_url


  end
end
