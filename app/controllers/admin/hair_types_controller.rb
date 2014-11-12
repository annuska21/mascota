class Admin::HairTypesController < Admin::AdminController
  
  # GET /hair_types
  # GET /hair_types.json
  def index
    @hair_types = HairType.all

  end

 
  def new
    @hair_type = HairType.new

  end

  # GET /hair_types/1/edit
  def edit
    @hair_type = HairType.find(params[:id])
  end

  # POST /hair_types
  # POST /hair_types.json
  def create
    
    @hair_type = HairType.new(params[:hair_type])


    if @hair_type.save
      redirect_to action: "index", notice: 'Hair type was successfully created.' 
    else
      render action: "new" 
    end

  end

  # PUT /hair_types/1
  # PUT /hair_types/1.json
  def update
    @hair_type = HairType.find(params[:id])

    if @hair_type.update_attributes(params[:hair_type])
      redirect_to action: "index", notice: 'Hair type was successfully updated.'
    else
      render action: "edit"
    end
  end

  # DELETE /hair_types/1
  # DELETE /hair_types/1.json
  def destroy
    @hair_type = HairType.find(params[:id])
    @hair_type.destroy

    redirect_to hair_types_url 

  end
end
