class Administration::CarersController < Administration::AdministrationController
  before_filter :find_shelter
  
  def index
    @shelter = current_shelter
    @carers = @shelter.carers.search(params[:search]).sorted.paginate(:page => params[:page])


  end


  def new
    @shelter = current_shelter
    @carer = @shelter.carers.build
  end


  def edit
   
    @carer = Carer.find(params[:id])
  end

  def create
    @shelter = current_shelter
    @carer = @shelter.carers.new(params[:carer])

      if @carer.save
       redirect_to action: "index", :shelter_id => @shelter.id, notice: 'El cuidador se ha dado de alta.'
        
      else
        render action: "new"
     
      end

  end


  def update
    @carer = Carer.find(params[:id])


      if @carer.update_attributes(params[:carer])
        redirect_to action: "index", :shelter_id => @shelter.id, notice: 'El cuidador se ha actualizado.'

      else
        render action: "edit"
    
      end

  end
  def find_shelter

    if params[:shelter_id]
      @shelter = Shelter.find(params[:shelter_id])
      
    else

    end
  end

end
