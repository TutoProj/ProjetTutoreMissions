# -*- coding: utf-8 -*-
class FraisRepasController < ApplicationController
  before_filter :authenticate_user!
  # GET /frais_repas
  # GET /frais_repas.json
  def index
    @frais_repas = FraisRepa.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render :json => @frais_repas }
    end
  end

  # GET /frais_repas/1
  # GET /frais_repas/1.json
  def show
    @frais_repa = FraisRepa.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render :json => @frais_repa }
    end
  end

  # GET /frais_repas/new
  # GET /frais_repas/new.json
  def new
    @frais_repa = FraisRepa.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render :json => @frais_repa }
    end
  end

  # GET /frais_repas/1/edit
  def edit
    @frais_repa = FraisRepa.find(params[:id])
  end

  # POST /frais_repas
  # POST /frais_repas.json
  def create
    @frais_repa = FraisRepa.new(params[:frais_repa])

    respond_to do |format|
      if @frais_repa.save
        format.html { redirect_to @frais_repa, :notice => 'Le frais de repas a bien été créé' }
        format.json { render :json => @frais_repa, :status => :created, :location => @frais_repa }
      else
        format.html { render :action => "new" }
        format.json { render :json => @frais_repa.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /frais_repas/1
  # PUT /frais_repas/1.json
  def update
    @frais_repa = FraisRepa.find(params[:id])

    respond_to do |format|
      if @frais_repa.update_attributes(params[:frais_repa])
        format.html { redirect_to @frais_repa, :notice => 'Le frais de repas a bien été modifé' }
        format.json { head :no_content }
      else
        format.html { render :action => "edit" }
        format.json { render :json => @frais_repa.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /frais_repas/1
  # DELETE /frais_repas/1.json
  def destroy
    @frais_repa = FraisRepa.find(params[:id])
    @frais_repa.destroy

    respond_to do |format|
      format.html { redirect_to frais_repas_url }
      format.json { head :no_content }
    end
  end
end
