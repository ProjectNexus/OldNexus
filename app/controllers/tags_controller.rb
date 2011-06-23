class TagsController < ApplicationController
  # GET /tags
  # GET /tags.xml
  def index
    @tags = Tag.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @tags }
    end
  end

  # GET /tags/1
  # GET /tags/1.xml
  def show
    @tag = Tag.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @tag }
    end
  end

  # GET /tags/new
  # GET /tags/new.xml
  def new
    
    @tag = Tag.new
    @tag_link = TagLink.new(params[:tag_link])

    render :layout => false
  end

  # POST /tags
  # POST /tags.xml

  def create
    params[:tag][:name].downcase!
    params[:tag][:name] = params[:tag][:name].gsub(/[^a-z0-9]+/,'-')

    
    @find = Tag.find(:first, :conditions => "name = '#{params[:tag][:name]}'")
    if @find.nil?
      @tag = Tag.new(params[:tag])
      @tag_link = @tag.tag_links.build(params[:tag_link])
      @tag.save
      render :json => {:msg => "Created and added #{@tag.name} to list of tags",:tag=>@tag.name}.to_json
      #redirect_to(polymorphic_path(@tag_link.taggable),:notice=>"Created and added #{@tag.name} to list of tags.")
    else
      @link_find = TagLink.find(:first, :conditions => {:tag_id => @find.id, :taggable_type => params[:tag_link][:taggable_type],:taggable_id => params[:tag_link][:taggable_id]})
      if @link_find.nil?
        @tag_link = @find.tag_links.build(params[:tag_link])
        @find.save
        render :json => {:msg=>"Added #{@find.name} to list of tags",:tag=>@find.name}.to_json

        #redirect_to(@tag_link.taggable,:notice => "Added #{@find.name} to list of tags.")
      else
        render :json => {:msg=>"This object is already tagged with #{@find.name}",:tag=>@find.name}.to_json
        #redirect_to(polymorphic_path(@link_find.taggable),:notice => "This object is already tagged with #{@find.name}!")
      end
    end

    

    # @tag.tag_links_attributes = params[:tag_link]
    
    #    respond_to do |format|
    #      if !@find.nil? then
    #        format.html { redirect_to(tag_links_path, :notice => "Tag '#{params[:tag][:name]}' already exists" )}
    #        format.xml { render :xml => @find.errors, :status => "Not found" }
    #      else if @tag.save then
    #        format.html { redirect_to(@tag, :notice => 'Tag was successfully created.') }
    #        format.xml  { render :xml => @tag, :status => :created, :location => @tag }
    #      else
    #        format.html { render :action => "new" }
    #        format.xml  { render :xml => @tag.errors, :status => :unprocessable_entity }
    #      end
    #      end
    #    end
  end

  # DELETE /tags/1
  # DELETE /tags/1.xml
  def destroy
    @tag = Tag.find(params[:id])
    @tag.destroy

    respond_to do |format|
      format.html { redirect_to(tags_url) }
      format.xml  { head :ok }
    end
  end
end
