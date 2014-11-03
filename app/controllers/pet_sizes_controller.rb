class PetSizesController < ApplicationController
  # GET /pet_sizes
  # GET /pet_sizes.json
  def index
    @pet_sizes = PetSize.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @pet_sizes }
    end
  end

  # GET /pet_sizes/1
  # GET /pet_sizes/1.json
  def show
    @pet_size = PetSize.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @pet_size }
    end
  end

  # GET /pet_sizes/new
  # GET /pet_sizes/new.json
  def new
    @pet_size = PetSize.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @pet_size }
    end
  end

  # GET /pet_sizes/1/edit
  def edit
    @pet_size = PetSize.find(params[:id])
  end

  # POST /pet_sizes
  # POST /pet_sizes.json
  def create
    @pet_size = PetSize.new(params[:pet_size])

    respond_to do |format|
      if @pet_size.save
        format.html { redirect_to @pet_size, notice: 'Pet size was successfully created.' }
        format.json { render json: @pet_size, status: :created, location: @pet_size }
      else
        format.html { render action: "new" }
        format.json { render json: @pet_size.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /pet_sizes/1
  # PUT /pet_sizes/1.json
  def update
    @pet_size = PetSize.find(params[:id])

    respond_to do |format|
      if @pet_size.update_attributes(params[:pet_size])
        format.html { redirect_to @pet_size, notice: 'Pet size was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @pet_size.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /pet_sizes/1
  # DELETE /pet_sizes/1.json
  def destroy
    @pet_size = PetSize.find(params[:id])
    @pet_size.destroy

    respond_to do |format|
      format.html { redirect_to pet_sizes_url }
      format.json { head :no_content }
    end
  end
end
