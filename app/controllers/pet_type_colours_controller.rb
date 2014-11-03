class PetTypeColoursController < ApplicationController
  # GET /pet_type_colours
  # GET /pet_type_colours.json
  def index
    @pet_type_colours = PetTypeColour.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @pet_type_colours }
    end
  end

  # GET /pet_type_colours/1
  # GET /pet_type_colours/1.json
  def show
    @pet_type_colour = PetTypeColour.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @pet_type_colour }
    end
  end

  # GET /pet_type_colours/new
  # GET /pet_type_colours/new.json
  def new
    @pet_type_colour = PetTypeColour.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @pet_type_colour }
    end
  end

  # GET /pet_type_colours/1/edit
  def edit
    @pet_type_colour = PetTypeColour.find(params[:id])
  end

  # POST /pet_type_colours
  # POST /pet_type_colours.json
  def create
    @pet_type_colour = PetTypeColour.new(params[:pet_type_colour])

    respond_to do |format|
      if @pet_type_colour.save
        format.html { redirect_to @pet_type_colour, notice: 'Pet type colour was successfully created.' }
        format.json { render json: @pet_type_colour, status: :created, location: @pet_type_colour }
      else
        format.html { render action: "new" }
        format.json { render json: @pet_type_colour.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /pet_type_colours/1
  # PUT /pet_type_colours/1.json
  def update
    @pet_type_colour = PetTypeColour.find(params[:id])

    respond_to do |format|
      if @pet_type_colour.update_attributes(params[:pet_type_colour])
        format.html { redirect_to @pet_type_colour, notice: 'Pet type colour was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @pet_type_colour.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /pet_type_colours/1
  # DELETE /pet_type_colours/1.json
  def destroy
    @pet_type_colour = PetTypeColour.find(params[:id])
    @pet_type_colour.destroy

    respond_to do |format|
      format.html { redirect_to pet_type_colours_url }
      format.json { head :no_content }
    end
  end
end
