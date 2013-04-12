# -*- coding: undecided -*-
class VehiculePersosController < ApplicationController
  # GET /vehicule_persos
  # GET /vehicule_persos.json
  def index
    @vehicule_persos = VehiculePerso.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render :json => @vehicule_persos }
    end
  end

  # GET /vehicule_persos/1
  # GET /vehicule_persos/1.json
  def show
    @vehicule_perso = VehiculePerso.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render :json => @vehicule_perso }
    end
  end

  # GET /vehicule_persos/new
  # GET /vehicule_persos/new.json
  def new
    @vehicule_perso = VehiculePerso.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render :json => @vehicule_perso }
    end
  end

  # GET /vehicule_persos/1/edit
  def edit
    @vehicule_perso = VehiculePerso.find(params[:id])
  end

  # POST /vehicule_persos
  # POST /vehicule_persos.json
  def create
    @vehicule_perso = VehiculePerso.new(params[:vehicule_perso])

    respond_to do |format|
      if @vehicule_perso.save
        format.html { redirect_to @vehicule_perso, :notice => 'Le véhicule personnel a bien été ajouté' }
        format.json { render :json => @vehicule_perso, :status => :created, :location => @vehicule_perso }
      else
        format.html { render :action => "new" }
        format.json { render :json => @vehicule_perso.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /vehicule_persos/1
  # PUT /vehicule_persos/1.json
  def update
    @vehicule_perso = VehiculePerso.find(params[:id])

    respond_to do |format|
      if @vehicule_perso.update_attributes(params[:vehicule_perso])
        format.html { redirect_to @vehicule_perso, :notice => 'Le véhicule personnel a bien été modifié' }
        format.json { head :no_content }
      else
        format.html { render :action => "edit" }
        format.json { render :json => @vehicule_perso.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /vehicule_persos/1
  # DELETE /vehicule_persos/1.json
  def destroy
    @vehicule_perso = VehiculePerso.find(params[:id])
    @vehicule_perso.destroy

    respond_to do |format|
      format.html { redirect_to vehicule_persos_url }
      format.json { head :no_content }
    end
  end
end
