class PetTypeBreedsController < ApplicationController
  # GET /pet_type_breeds
  # GET /pet_type_breeds.json
  def index
    @pet_type_breeds = PetTypeBreed.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @pet_type_breeds }
    end
  end

  # GET /pet_type_breeds/1
  # GET /pet_type_breeds/1.json
  def show
    @pet_type_breed = PetTypeBreed.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @pet_type_breed }
    end
  end

  # GET /pet_type_breeds/new
  # GET /pet_type_breeds/new.json
  def new
    @pet_type_breed = PetTypeBreed.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @pet_type_breed }
    end
  end

  # GET /pet_type_breeds/1/edit
  def edit
    @pet_type_breed = PetTypeBreed.find(params[:id])
  end

  # POST /pet_type_breeds
  # POST /pet_type_breeds.json
  def create
    @pet_type_breed = PetTypeBreed.new(params[:pet_type_breed])

    respond_to do |format|
      if @pet_type_breed.save
        format.html { redirect_to @pet_type_breed, notice: 'Pet type breed was successfully created.' }
        format.json { render json: @pet_type_breed, status: :created, location: @pet_type_breed }
      else
        format.html { render action: "new" }
        format.json { render json: @pet_type_breed.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /pet_type_breeds/1
  # PUT /pet_type_breeds/1.json
  def update
    @pet_type_breed = PetTypeBreed.find(params[:id])

    respond_to do |format|
      if @pet_type_breed.update_attributes(params[:pet_type_breed])
        format.html { redirect_to @pet_type_breed, notice: 'Pet type breed was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @pet_type_breed.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /pet_type_breeds/1
  # DELETE /pet_type_breeds/1.json
  def destroy
    @pet_type_breed = PetTypeBreed.find(params[:id])
    @pet_type_breed.destroy

    respond_to do |format|
      format.html { redirect_to pet_type_breeds_url }
      format.json { head :no_content }
    end
  end
end
