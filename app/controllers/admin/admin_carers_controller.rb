class Admin::AdminCarersController < Admin::AdminController

  def index
    @carers = Carer.all

  end


  def show
    @carer = Carer.find(params[:id])

  end

  def new
    @carer = Carer.new
    @shelter = Shelter.order('name ASC')
  end


  def edit
    @carer = Carer.find(params[:id])
    @shelter = Shelter.order('name ASC')
  end

  def create
    @carer = Carer.new(params[:carer])


      if @carer.save
       redirect_to action: "index", notice: 'El cuidador se ha dado de alta.'
        
      else
        @shelter = Shelter.order('name ASC')
        render action: "new"
     
      end

  end


  def update
    @carer = Carer.find(params[:id])


      if @carer.update_attributes(params[:carer])
        redirect_to action: "index", notice: 'El cuidador se ha actualizado.'

      else
        @shelter = Shelter.order('name ASC')
        render action: "edit"
    
      end

  end

  def destroy
    @carer = Carer.find(params[:id])
    @carer.destroy

    redirect_to admin_carers_url

    end

end
