class FraisDeplacementsController < ApplicationController
  # GET /frais_deplacements
  # GET /frais_deplacements.json
  def index
    @frais_deplacements = FraisDeplacement.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render :json => @frais_deplacements }
    end
  end

  # GET /frais_deplacements/1
  # GET /frais_deplacements/1.json
  def show
    @frais_deplacement = FraisDeplacement.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render :json => @frais_deplacement }
    end
  end

  # GET /frais_deplacements/new
  # GET /frais_deplacements/new.json
  def new
    @frais_deplacement = FraisDeplacement.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render :json => @frais_deplacement }
    end
  end

  # GET /frais_deplacements/1/edit
  def edit
    @frais_deplacement = FraisDeplacement.find(params[:id])
  end

  # POST /frais_deplacements
  # POST /frais_deplacements.json
  def create
    @frais_deplacement = FraisDeplacement.new(params[:frais_deplacement])

    respond_to do |format|
      if @frais_deplacement.save
        format.html { redirect_to @frais_deplacement, :notice => 'Frais deplacement was successfully created.' }
        format.json { render :json => @frais_deplacement, :status => :created, :location => @frais_deplacement }
      else
        format.html { render :action => "new" }
        format.json { render :json => @frais_deplacement.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /frais_deplacements/1
  # PUT /frais_deplacements/1.json
  def update
    @frais_deplacement = FraisDeplacement.find(params[:id])

    respond_to do |format|
      if @frais_deplacement.update_attributes(params[:frais_deplacement])
        format.html { redirect_to @frais_deplacement, :notice => 'Frais deplacement was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render :action => "edit" }
        format.json { render :json => @frais_deplacement.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /frais_deplacements/1
  # DELETE /frais_deplacements/1.json
  def destroy
    @frais_deplacement = FraisDeplacement.find(params[:id])
    @frais_deplacement.destroy

    respond_to do |format|
      format.html { redirect_to frais_deplacements_url }
      format.json { head :no_content }
    end
  end
end
