class SeedsController < ApplicationController
  before_filter :authenticate_user!, :only => [:new, :create, :update, :edit, :destroy]
  
  # GET /seeds
  # GET /seeds.xml
  def index
    @seeds = Seed.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @seeds }
    end
  end

  # GET /seeds/1
  # GET /seeds/1.xml
  def show
    @seed = Seed.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @seed }
    end
  end

  # GET /seeds/new
  # GET /seeds/new.xml
  def new
    @seed = Seed.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @seed }
    end
  end

  # GET /seeds/1/edit
  def edit
    @seed = Seed.find(params[:id])
  end

  # POST /seeds
  # POST /seeds.xml
  def create
    @seed = Seed.new(params[:seed])

    @seed.user_id = current_user.id

    respond_to do |format|
      if @seed.save
        format.html { redirect_to(@seed, :notice => 'Seed was successfully created.') }
        format.xml  { render :xml => @seed, :status => :created, :location => @seed }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @seed.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /seeds/1
  # PUT /seeds/1.xml
  def update
    @seed = Seed.find(params[:id])

    respond_to do |format|
      if @seed.update_attributes(params[:seed])
        format.html { redirect_to(@seed, :notice => 'Seed was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @seed.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /seeds/1
  # DELETE /seeds/1.xml
  def destroy
    @seed = Seed.find(params[:id])
    @seed.destroy

    respond_to do |format|
      format.html { redirect_to(seeds_url) }
      format.xml  { head :ok }
    end
  end
end
