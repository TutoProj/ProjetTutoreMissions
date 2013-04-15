# -*- coding: utf-8 -*-
class MoyenTransportsController < ApplicationController
  before_filter :authenticate_user!
  # GET /moyen_transports
  # GET /moyen_transports.json
  def index
    @moyen_transports = MoyenTransport.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render :json => @moyen_transports }
    end
  end

  # GET /moyen_transports/1
  # GET /moyen_transports/1.json
  def show
    @moyen_transport = MoyenTransport.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render :json => @moyen_transport }
    end
  end

  # GET /moyen_transports/new
  # GET /moyen_transports/new.json
  def new
    @moyen_transport = MoyenTransport.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render :json => @moyen_transport }
    end
  end

  # GET /moyen_transports/1/edit
  def edit
    @moyen_transport = MoyenTransport.find(params[:id])
  end

  # POST /moyen_transports
  # POST /moyen_transports.json
  def create
    @moyen_transport = MoyenTransport.new(params[:moyen_transport])

    respond_to do |format|
      if @moyen_transport.save
        format.html { redirect_to @moyen_transport, :notice => 'Le moyen de transport a bien été ajouté' }
        format.json { render :json => @moyen_transport, :status => :created, :location => @moyen_transport }
      else
        format.html { render :action => "new" }
        format.json { render :json => @moyen_transport.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /moyen_transports/1
  # PUT /moyen_transports/1.json
  def update
    @moyen_transport = MoyenTransport.find(params[:id])

    respond_to do |format|
      if @moyen_transport.update_attributes(params[:moyen_transport])
        format.html { redirect_to @moyen_transport, :notice => 'Le moyen de transport a bien été modifié' }
        format.json { head :no_content }
      else
        format.html { render :action => "edit" }
        format.json { render :json => @moyen_transport.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /moyen_transports/1
  # DELETE /moyen_transports/1.json
  def destroy
    @moyen_transport = MoyenTransport.find(params[:id])
    @moyen_transport.destroy

    respond_to do |format|
      format.html { redirect_to moyen_transports_url }
      format.json { head :no_content }
    end
  end
end
