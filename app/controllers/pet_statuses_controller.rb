class PetStatusesController < ApplicationController
  # GET /pet_statuses
  # GET /pet_statuses.json
  def index
    @pet_statuses = PetStatus.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @pet_statuses }
    end
  end

  # GET /pet_statuses/1
  # GET /pet_statuses/1.json
  def show
    @pet_status = PetStatus.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @pet_status }
    end
  end

  # GET /pet_statuses/new
  # GET /pet_statuses/new.json
  def new
    @pet_status = PetStatus.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @pet_status }
    end
  end

  # GET /pet_statuses/1/edit
  def edit
    @pet_status = PetStatus.find(params[:id])
  end

  # POST /pet_statuses
  # POST /pet_statuses.json
  def create
    @pet_status = PetStatus.new(params[:pet_status])

    respond_to do |format|
      if @pet_status.save
        format.html { redirect_to @pet_status, notice: 'Pet status was successfully created.' }
        format.json { render json: @pet_status, status: :created, location: @pet_status }
      else
        format.html { render action: "new" }
        format.json { render json: @pet_status.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /pet_statuses/1
  # PUT /pet_statuses/1.json
  def update
    @pet_status = PetStatus.find(params[:id])

    respond_to do |format|
      if @pet_status.update_attributes(params[:pet_status])
        format.html { redirect_to @pet_status, notice: 'Pet status was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @pet_status.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /pet_statuses/1
  # DELETE /pet_statuses/1.json
  def destroy
    @pet_status = PetStatus.find(params[:id])
    @pet_status.destroy

    respond_to do |format|
      format.html { redirect_to pet_statuses_url }
      format.json { head :no_content }
    end
  end
end
