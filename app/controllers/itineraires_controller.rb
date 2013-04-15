# -*- coding: utf-8 -*-
class ItinerairesController < ApplicationController
  before_filter :authenticate_user!
  # GET /itineraires
  # GET /itineraires.json
  def index
    @itineraires = Itineraire.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render :json => @itineraires }
    end
  end

  # GET /itineraires/1
  # GET /itineraires/1.json
  def show
    @itineraire = Itineraire.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render :json => @itineraire }
    end
  end

  # GET /itineraires/new
  # GET /itineraires/new.json
  def new
    @itineraire = Itineraire.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render :json => @itineraire }
    end
  end

  # GET /itineraires/1/edit
  def edit
    @itineraire = Itineraire.find(params[:id])
  end

  # POST /itineraires
  # POST /itineraires.json
  def create
    @itineraire = Itineraire.new(params[:itineraire])

    respond_to do |format|
      if @itineraire.save
        format.html { redirect_to @itineraire, :notice => 'L\'itinéraire a bien été créé' }
        format.json { render :json => @itineraire, :status => :created, :location => @itineraire }
      else
        format.html { render :action => "new" }
        format.json { render :json => @itineraire.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /itineraires/1
  # PUT /itineraires/1.json
  def update
    @itineraire = Itineraire.find(params[:id])

    respond_to do |format|
      if @itineraire.update_attributes(params[:itineraire])
        format.html { redirect_to @itineraire, :notice => 'L\'itinéraire a bien été modifié' }
        format.json { head :no_content }
      else
        format.html { render :action => "edit" }
        format.json { render :json => @itineraire.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /itineraires/1
  # DELETE /itineraires/1.json
  def destroy
    @itineraire = Itineraire.find(params[:id])
    @itineraire.destroy

    respond_to do |format|
      format.html { redirect_to itineraires_url }
      format.json { head :no_content }
    end
  end
end
