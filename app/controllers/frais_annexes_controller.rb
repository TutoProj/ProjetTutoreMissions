# -*- coding: utf-8 -*-
class FraisAnnexesController < ApplicationController
  before_filter :authenticate_user!


  # GET /frais_annexes
  # GET /frais_annexes.json
  def index
    @frais_annexes = FraisAnnex.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render :json => @frais_annexes }
    end
  end

  # GET /frais_annexes/1
  # GET /frais_annexes/1.json
  def show
    @frais_annex = FraisAnnex.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render :json => @frais_annex }
    end
  end

  # GET /frais_annexes/new
  # GET /frais_annexes/new.json
  def new
    @frais_annex = FraisAnnex.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render :json => @frais_annex }
    end
  end

  # GET /frais_annexes/1/edit
  def edit
    @frais_annex = FraisAnnex.find(params[:id])
  end

  # POST /frais_annexes
  # POST /frais_annexes.json
  def create
    @frais_annex = FraisAnnex.new(params[:frais_annex])

    respond_to do |format|
      if @frais_annex.save
        format.html { redirect_to @frais_annex, :notice => 'Le frais annexe a bien été créé' }
        format.json { render :json => @frais_annex, :status => :created, :location => @frais_annex }
      else
        format.html { render :action => "new" }
        format.json { render :json => @frais_annex.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /frais_annexes/1
  # PUT /frais_annexes/1.json
  def update
    @frais_annex = FraisAnnex.find(params[:id])

    respond_to do |format|
      if @frais_annex.update_attributes(params[:frais_annex])
        format.html { redirect_to @frais_annex, :notice => 'Le frais annexe a bien été modifié' }
        format.json { head :no_content }
      else
        format.html { render :action => "edit" }
        format.json { render :json => @frais_annex.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /frais_annexes/1
  # DELETE /frais_annexes/1.json
  def destroy
    @frais_annex = FraisAnnex.find(params[:id])
    @frais_annex.destroy

    respond_to do |format|
      format.html { redirect_to frais_annexes_url }
      format.json { head :no_content }
    end
  end
end
