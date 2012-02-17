class ClidistrictsController < ApplicationController
  # GET /clidistricts
  # GET /clidistricts.json
  def index
    @clidistricts = Clidistrict.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @clidistricts }
    end
  end

  # GET /clidistricts/1
  # GET /clidistricts/1.json
  def show
    @clidistrict = Clidistrict.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @clidistrict }
    end
  end

  # GET /clidistricts/new
  # GET /clidistricts/new.json
  def new
    @clidistrict = Clidistrict.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @clidistrict }
    end
  end

  # GET /clidistricts/1/edit
  def edit
    @clidistrict = Clidistrict.find(params[:id])
  end

  # POST /clidistricts
  # POST /clidistricts.json
  def create
    @clidistrict = Clidistrict.new(params[:clidistrict])

    respond_to do |format|
      if @clidistrict.save
        format.html { redirect_to @clidistrict, notice: 'Clidistrict was successfully created.' }
        format.json { render json: @clidistrict, status: :created, location: @clidistrict }
      else
        format.html { render action: "new" }
        format.json { render json: @clidistrict.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /clidistricts/1
  # PUT /clidistricts/1.json
  def update
    @clidistrict = Clidistrict.find(params[:id])

    respond_to do |format|
      if @clidistrict.update_attributes(params[:clidistrict])
        format.html { redirect_to @clidistrict, notice: 'Clidistrict was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render action: "edit" }
        format.json { render json: @clidistrict.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /clidistricts/1
  # DELETE /clidistricts/1.json
  def destroy
    @clidistrict = Clidistrict.find(params[:id])
    @clidistrict.destroy

    respond_to do |format|
      format.html { redirect_to clidistricts_url }
      format.json { head :ok }
    end
  end
end
