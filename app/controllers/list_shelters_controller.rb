class ListSheltersController < ApplicationController
  
  before_filter :find_shelter


  def index  
    if params[:search].present?  
      @shelters = Shelter.near(params[:search], 50, :order => :distance).paginate(:page => params[:page])
    else  
      @shelters = Shelter.paginate(:page => params[:page]).all
    end  
    @shelter = Shelter.all
  end  

  def show
    @shelter = Shelter.find(params[:id])


  end

  def listed
     @pets = Pet.where(:shelter_id => @shelter.id).en_adopcion.paginate(:page => params[:page])
  end

  def find_shelter
    if params[:shelter_id]
      @shelter = Shelter.find(params[:shelter_id])
    else

    end
  end


end
