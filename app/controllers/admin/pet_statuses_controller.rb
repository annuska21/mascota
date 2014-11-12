class Admin::PetStatusesController < Admin::AdminController
  # GET /pet_statuses
  # GET /pet_statuses.json
  def index
    @pet_statuses = PetStatus.all


  end

  # GET /pet_statuses/1
  # GET /pet_statuses/1.json
  def show
    @pet_status = PetStatus.find(params[:id])

  end

  # GET /pet_statuses/new
  # GET /pet_statuses/new.json
  def new
    @pet_status = PetStatus.new

  end

  # GET /pet_statuses/1/edit
  def edit
    @pet_status = PetStatus.find(params[:id])
  end

  # POST /pet_statuses
  # POST /pet_statuses.json
  def create
    @pet_status = PetStatus.new(params[:pet_status])

      if @pet_status.save
        redirect_to action: "index", notice: 'El name se ha creado.'
  
      else
       render action: "new"
      
      end

  end

  # PUT /pet_statuses/1
  # PUT /pet_statuses/1.json
  def update
    @pet_status = PetStatus.find(params[:id])


      if @pet_status.update_attributes(params[:pet_status])
        redirect_to action: "index", notice: 'El name se ha actualizado.'
   
      else
        render action: "edit"
       
      end
    
  end

  # DELETE /pet_statuses/1
  # DELETE /pet_statuses/1.json
  def destroy
    @pet_status = PetStatus.find(params[:id])
    @pet_status.destroy


      redirect_to pet_statuses_url
 
  end
end
