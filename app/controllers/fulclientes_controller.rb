class FulclientesController < ApplicationController
  # GET /fulclientes
  # GET /fulclientes.json
  def index
    @fulclientes = Fulcliente.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @fulclientes }
    end
  end

  # GET /fulclientes/1
  # GET /fulclientes/1.json
  def show
    @fulcliente = Fulcliente.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @fulcliente }
    end
  end

  # GET /fulclientes/new
  # GET /fulclientes/new.json
  def new
	@clidistrict_array = Clidistrict.find(:all).collect {|p| [ p.name, p.id ] }
	@documenttype_array = Documenttype.find(:all).collect {|p| [ p.name, p.id ] }
    @fulcliente = Fulcliente.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @fulcliente }
    end
  end

  # GET /fulclientes/1/edit
  def edit
	@clidistrict_array = Clidistrict.find(:all).collect {|p| [ p.name, p.id ] }
	@documenttype_array = Documenttype.find(:all).collect {|p| [ p.name, p.id ] }
    @fulcliente = Fulcliente.find(params[:id])
  end

  # POST /fulclientes
  # POST /fulclientes.json
  def create
	@clidistrict_array = Clidistrict.find(:all).collect {|p| [ p.name, p.id ] }
	@documenttype_array = Documenttype.find(:all).collect {|p| [ p.name, p.id ] }
    @fulcliente = Fulcliente.new(params[:fulcliente])

    respond_to do |format|
      if @fulcliente.save
        format.html { redirect_to @fulcliente, notice: 'Fulcliente was successfully created.' }
        format.json { render json: @fulcliente, status: :created, location: @fulcliente }
      else
        format.html { render action: "new" }
        format.json { render json: @fulcliente.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /fulclientes/1
  # PUT /fulclientes/1.json
  def update
    @fulcliente = Fulcliente.find(params[:id])

    respond_to do |format|
      if @fulcliente.update_attributes(params[:fulcliente])
        format.html { redirect_to @fulcliente, notice: 'Fulcliente was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render action: "edit" }
        format.json { render json: @fulcliente.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /fulclientes/1
  # DELETE /fulclientes/1.json
  def destroy
    @fulcliente = Fulcliente.find(params[:id])
    @fulcliente.destroy

    respond_to do |format|
      format.html { redirect_to fulclientes_url }
      format.json { head :ok }
    end
  end
end
