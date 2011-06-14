class RootsController < ApplicationController
  # GET /roots
  # GET /roots.xml
  def index
    @roots = Root.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @roots }
    end
  end

  # GET /roots/1
  # GET /roots/1.xml
  def show
    @root = Root.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @root }
    end
  end

  # GET /roots/new
  # GET /roots/new.xml
  def new
    @root = Root.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @root }
    end
  end

  # GET /roots/1/edit
  def edit
    @root = Root.find(params[:id])
  end

  # POST /roots
  # POST /roots.xml
  def create
    @root = Root.new(params[:root])

    respond_to do |format|
      if @root.save
        format.html { redirect_to(@root, :notice => 'Root was successfully created.') }
        format.xml  { render :xml => @root, :status => :created, :location => @root }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @root.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /roots/1
  # PUT /roots/1.xml
  def update
    @root = Root.find(params[:id])

    respond_to do |format|
      if @root.update_attributes(params[:root])
        format.html { redirect_to(@root, :notice => 'Root was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @root.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /roots/1
  # DELETE /roots/1.xml
  def destroy
    @root = Root.find(params[:id])
    @root.destroy

    respond_to do |format|
      format.html { redirect_to(roots_url) }
      format.xml  { head :ok }
    end
  end
end
