# -*- coding: utf-8 -*-
class MissionsController < ApplicationController
  before_filter :authenticate_user!
  # GET /missions
  # GET /missions.json
  def index
    if current_user.admin?
      @missions = Mission.all
    else
      @missions = current_user.missions
    respond_to do |format|
      format.html # index.html.erb
      format.json { render :json => @missions }
    end
  end

  # GET /missions/1
  # GET /missions/1.json
  def show
    @mission = Mission.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render :json => @mission }
    end
  end

  # GET /missions/new
  # GET /missions/new.json
  def new
    @mission = current_user.missions.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render :json => @mission }
    end
  end

  # GET /missions/1/edit
  def edit
    @mission = Mission.find(params[:id])
  end

  # POST /missions
  # POST /missions.json
  def create
    @mission = current_user.missions.new(params[:mission],:status=>"Aucun")

    respond_to do |format|
      if @mission.save
        format.html { redirect_to @mission, :notice => 'La mission a bien été créée' }
        format.json { render :json => @mission, :status => :created, :location => @mission }
      else
        format.html { render :action => "new" }
        format.json { render :json => @mission.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /missions/1
  # PUT /missions/1.json
  def update
    @mission = Mission.find(params[:id])

    respond_to do |format|
      if @mission.update_attributes(params[:mission])
        format.html { redirect_to @mission, :notice => 'La mission a bien été modifiée' }
        format.json { head :no_content }
      else
        format.html { render :action => "edit" }
        format.json { render :json => @mission.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /missions/1
  # DELETE /missions/1.json
  def destroy
    @mission = Mission.find(params[:id])
    @mission.destroy

    respond_to do |format|
      format.html { redirect_to missions_url }
      format.json { head :no_content }
    end
  end

   def ordre_mission
    @mission = Mission.find(params[:id])

    respond_to do |format|
      if @mission.update_attributes(params[:mission])
        format.html { redirect_to path_ordre_mission_pdf, :notice => 'Mission was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render :action => "ordre_mission" }
        format.json { render :json => @mission.errors, :status => :unprocessable_entity }
      end
    end
end
end
