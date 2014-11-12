class Admin::AdminSheltersController < Admin::AdminController
  

  # GET /shelters
  # GET /shelters.json
  def index
    @shelters = Shelter.all
  #  @pet_adoption = Shelter.pet.en_adopcion
  end

  # GET /shelters/1
  # GET /shelters/1.json
  def show
    @shelter = Shelter.find(params[:id])

  end

  # GET /shelters/new
  # GET /shelters/new.json
  def new
    @shelter = Shelter.new


  end

  # GET /shelters/1/edit
  def edit
    @shelter = Shelter.find(params[:id])
  end

  # POST /shelters
  # POST /shelters.json
  def create
    @shelter = Shelter.new(params[:shelter])

      if @shelter.save
        redirect_to action: "index", notice: 'El refugio se ha creado.'
      else
        render action: "new"
      end

  end

  # PUT /shelters/1
  # PUT /shelters/1.json
  def update
    @shelter = Shelter.find(params[:id])


      if @shelter.update_attributes(params[:shelter])
        redirect_to action:"index", notice: 'El refugio se ha modificado.'
      
      else
        render action: "edit"
       
      end

  end

  # DELETE /shelters/1
  # DELETE /shelters/1.json
  def destroy
    @shelter = Shelter.find(params[:id])
    @shelter.destroy


      redirect_to admin_shelters_url

  
  end
end
