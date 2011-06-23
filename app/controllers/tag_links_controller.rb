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
