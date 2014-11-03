class CarersController < ApplicationController
  # GET /carers
  # GET /carers.json
  def index
    @carers = Carer.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @carers }
    end
  end

  # GET /carers/1
  # GET /carers/1.json
  def show
    @carer = Carer.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @carer }
    end
  end

  # GET /carers/new
  # GET /carers/new.json
  def new
    @carer = Carer.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @carer }
    end
  end

  # GET /carers/1/edit
  def edit
    @carer = Carer.find(params[:id])
  end

  # POST /carers
  # POST /carers.json
  def create
    @carer = Carer.new(params[:carer])

    respond_to do |format|
      if @carer.save
        format.html { redirect_to @carer, notice: 'Carer was successfully created.' }
        format.json { render json: @carer, status: :created, location: @carer }
      else
        format.html { render action: "new" }
        format.json { render json: @carer.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /carers/1
  # PUT /carers/1.json
  def update
    @carer = Carer.find(params[:id])

    respond_to do |format|
      if @carer.update_attributes(params[:carer])
        format.html { redirect_to @carer, notice: 'Carer was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @carer.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /carers/1
  # DELETE /carers/1.json
  def destroy
    @carer = Carer.find(params[:id])
    @carer.destroy

    respond_to do |format|
      format.html { redirect_to carers_url }
      format.json { head :no_content }
    end
  end
end
