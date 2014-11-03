class PetTypesController < ApplicationController
  # GET /pet_types
  # GET /pet_types.json
  def index
    @pet_types = PetType.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @pet_types }
    end
  end

  # GET /pet_types/1
  # GET /pet_types/1.json
  def show
    @pet_type = PetType.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @pet_type }
    end
  end

  # GET /pet_types/new
  # GET /pet_types/new.json
  def new
    @pet_type = PetType.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @pet_type }
    end
  end

  # GET /pet_types/1/edit
  def edit
    @pet_type = PetType.find(params[:id])
  end

  # POST /pet_types
  # POST /pet_types.json
  def create
    @pet_type = PetType.new(params[:pet_type])

    respond_to do |format|
      if @pet_type.save
        format.html { redirect_to @pet_type, notice: 'Pet type was successfully created.' }
        format.json { render json: @pet_type, status: :created, location: @pet_type }
      else
        format.html { render action: "new" }
        format.json { render json: @pet_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /pet_types/1
  # PUT /pet_types/1.json
  def update
    @pet_type = PetType.find(params[:id])

    respond_to do |format|
      if @pet_type.update_attributes(params[:pet_type])
        format.html { redirect_to @pet_type, notice: 'Pet type was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @pet_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /pet_types/1
  # DELETE /pet_types/1.json
  def destroy
    @pet_type = PetType.find(params[:id])
    @pet_type.destroy

    respond_to do |format|
      format.html { redirect_to pet_types_url }
      format.json { head :no_content }
    end
  end
end
