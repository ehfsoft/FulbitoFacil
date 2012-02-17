class AdvertisingsController < ApplicationController
  # GET /advertisings
  # GET /advertisings.json
  def index
    @advertisings = Advertising.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @advertisings }
    end
  end

  # GET /advertisings/1
  # GET /advertisings/1.json
  def show
    @advertising = Advertising.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @advertising }
    end
  end

  # GET /advertisings/new
  # GET /advertisings/new.json
  def new
    @advertising = Advertising.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @advertising }
    end
  end

  # GET /advertisings/1/edit
  def edit
    @advertising = Advertising.find(params[:id])
  end

  # POST /advertisings
  # POST /advertisings.json
  def create
    @advertising = Advertising.new(params[:advertising])

    respond_to do |format|
      if @advertising.save
        format.html { redirect_to @advertising, notice: 'La publicidad se registro exitosamente.' }
        format.json { render json: @advertising, status: :created, location: @advertising }
      else
        format.html { render action: "new" }
        format.json { render json: @advertising.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /advertisings/1
  # PUT /advertisings/1.json
  def update
    @advertising = Advertising.find(params[:id])

    respond_to do |format|
      if @advertising.update_attributes(params[:advertising])
        format.html { redirect_to @advertising, notice: 'Publicidad actualizada.' }
        format.json { head :ok }
      else
        format.html { render action: "edit" }
        format.json { render json: @advertising.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /advertisings/1
  # DELETE /advertisings/1.json
  def destroy
    @advertising = Advertising.find(params[:id])
    @advertising.destroy

    respond_to do |format|
      format.html { redirect_to advertisings_url }
      format.json { head :ok }
    end
  end
end
