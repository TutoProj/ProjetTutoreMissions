# -*- coding: utf-8 -*-
class FraisHebergementsController < ApplicationController
  # GET /frais_hebergements
  # GET /frais_hebergements.json
  def index
    @frais_hebergements = FraisHebergement.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render :json => @frais_hebergements }
    end
  end

  # GET /frais_hebergements/1
  # GET /frais_hebergements/1.json
  def show
    @frais_hebergement = FraisHebergement.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render :json => @frais_hebergement }
    end
  end

  # GET /frais_hebergements/new
  # GET /frais_hebergements/new.json
  def new
    @frais_hebergement = FraisHebergement.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render :json => @frais_hebergement }
    end
  end

  # GET /frais_hebergements/1/edit
  def edit
    @frais_hebergement = FraisHebergement.find(params[:id])
  end

  # POST /frais_hebergements
  # POST /frais_hebergements.json
  def create
    @frais_hebergement = FraisHebergement.new(params[:frais_hebergement])

    respond_to do |format|
      if @frais_hebergement.save
        format.html { redirect_to @frais_hebergement, :notice => 'Le frais d\'hébergement a bien été créé' }
        format.json { render :json => @frais_hebergement, :status => :created, :location => @frais_hebergement }
      else
        format.html { render :action => "new" }
        format.json { render :json => @frais_hebergement.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /frais_hebergements/1
  # PUT /frais_hebergements/1.json
  def update
    @frais_hebergement = FraisHebergement.find(params[:id])

    respond_to do |format|
      if @frais_hebergement.update_attributes(params[:frais_hebergement])
        format.html { redirect_to @frais_hebergement, :notice => 'Le frais d\'hébergement a bien été modifié' }
        format.json { head :no_content }
      else
        format.html { render :action => "edit" }
        format.json { render :json => @frais_hebergement.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /frais_hebergements/1
  # DELETE /frais_hebergements/1.json
  def destroy
    @frais_hebergement = FraisHebergement.find(params[:id])
    @frais_hebergement.destroy

    respond_to do |format|
      format.html { redirect_to frais_hebergements_url }
      format.json { head :no_content }
    end
  end
end
