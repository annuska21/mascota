class ListSheltersController < ApplicationController
  
  before_filter :find_shelter

  # GET /shelters
  # GET /shelters.json

  def index  
    if params[:search].present?  
      @shelters = Shelter.near(params[:search], 50, :order => :distance).paginate(:page => params[:page])
    else  
      @shelters = Shelter.paginate(:page => params[:page]).all
    end  
  end  


  # GET /shelters/1
  # GET /shelters/1.json
  def show
    @shelter = Shelter.find(params[:id])


  end

  def listed
     @pets = Pet.where(:shelter_id => @shelter.id).en_adopcion
  end

  def find_shelter
    if params[:shelter_id]
      @shelter = Shelter.find(params[:shelter_id])
    else

    end
  end


end
