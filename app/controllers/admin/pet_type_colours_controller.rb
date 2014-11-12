class Admin::PetTypeColoursController < Admin::AdminController
  # GET /pet_type_colours
  # GET /pet_type_colours.json
  def index
    @pet_type_colours = PetTypeColour.all

  end

  # GET /pet_type_colours/1
  # GET /pet_type_colours/1.json
  def show
    @pet_type_colour = PetTypeColour.find(params[:id])

  end

  # GET /pet_type_colours/new
  # GET /pet_type_colours/new.json
  def new
    @pet_type_colour = PetTypeColour.new
     #  @pet_type = PetType.order('name ASC')


  end

  # GET /pet_type_colours/1/edit
  def edit
    @pet_type_colour = PetTypeColour.find(params[:id])
   #    @pet_type = PetType.order('name ASC')
  end

  # POST /pet_type_colours
  # POST /pet_type_colours.json
  def create
    @pet_type_colour = PetTypeColour.new(params[:pet_type_colour])


      if @pet_type_colour.save
        redirect_to action: "index", notice: 'name creado.'
       
      else
      @pet_type = PetType.order('name ASC')
      render action: "new"
      
      end

  end

  # PUT /pet_type_colours/1
  # PUT /pet_type_colours/1.json
  def update
    @pet_type_colour = PetTypeColour.find(params[:id])


      if @pet_type_colour.update_attributes(params[:pet_type_colour])
        redirect_to action: "index", notice: 'name actualizado.'
  
      else
        @pet_type = PetType.order('name ASC')
        render action: "edit"
   
      end

  end

  # DELETE /pet_type_colours/1
  # DELETE /pet_type_colours/1.json
  def destroy
    @pet_type_colour = PetTypeColour.find(params[:id])
    @pet_type_colour.destroy
    redirect_to pet_type_colours_url
  
  end
end
