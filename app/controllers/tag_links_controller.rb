class TagLinksController < ApplicationController
  # GET /tag_links
  # GET /tag_links.xml
  def index
    @tag_links = TagLink.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @tag_links }
    end
  end

  # GET /tag_links/1
  # GET /tag_links/1.xml
  def show
    @tag_link = TagLink.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @tag_link }
    end
  end

  # GET /tag_links/new
  # GET /tag_links/new.xml
  def new
    @tag_link = TagLink.new(params[:tag_link])

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @tag_link }
    end
  end

  # GET /tag_links/1/edit
  def edit
    @tag_link = TagLink.find(params[:id])
  end

  # POST /tag_links
  # POST /tag_links.xml
  def create
    @tag_link = TagLink.new(params[:tag_link])

    respond_to do |format|
      if @tag_link.save
        format.html { redirect_to(@tag_link, :notice => 'Tag link was successfully created.') }
        format.xml  { render :xml => @tag_link, :status => :created, :location => @tag_link }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @tag_link.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /tag_links/1
  # PUT /tag_links/1.xml
  def update
    @tag_link = TagLink.find(params[:id])

    respond_to do |format|
      if @tag_link.update_attributes(params[:tag_link])
        format.html { redirect_to(@tag_link, :notice => 'Tag link was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @tag_link.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /tag_links/1
  # DELETE /tag_links/1.xml
  def destroy
    @tag_link = TagLink.find(params[:id])
    @tag_link.destroy

    respond_to do |format|
      format.html { redirect_to(tag_links_url) }
      format.xml  { head :ok }
    end
  end
end
