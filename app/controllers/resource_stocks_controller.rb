class ResourceStocksController < ApplicationController
  # GET /resource_stocks
  # GET /resource_stocks.xml
  def index
    @resource_stocks = ResourceStock.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @resource_stocks }
    end
  end

  # GET /resource_stocks/1
  # GET /resource_stocks/1.xml
  def show
    @resource_stock = ResourceStock.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @resource_stock }
    end
  end

  # GET /resource_stocks/new
  # GET /resource_stocks/new.xml
  def new
    @resource_stock = ResourceStock.new

    @parent = find_resourceable

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @resource_stock }
    end
  end

  # GET /resource_stocks/1/edit
  def edit
    @resource_stock = ResourceStock.find(params[:id])
  end

  # POST /resource_stocks
  # POST /resource_stocks.xml
  def create
    @resource_stock = ResourceStock.new(params[:resource_stock])

    respond_to do |format|
      if @resource_stock.save
        format.html { redirect_to(@resource_stock, :notice => 'Resource stock was successfully created.') }
        format.xml  { render :xml => @resource_stock, :status => :created, :location => @resource_stock }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @resource_stock.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /resource_stocks/1
  # PUT /resource_stocks/1.xml
  def update
    @resource_stock = ResourceStock.find(params[:id])

    respond_to do |format|
      if @resource_stock.update_attributes(params[:resource_stock])
        format.html { redirect_to(@resource_stock, :notice => 'Resource stock was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @resource_stock.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /resource_stocks/1
  # DELETE /resource_stocks/1.xml
  def destroy
    @resource_stock = ResourceStock.find(params[:id])
    @resource_stock.destroy

    respond_to do |format|
      format.html { redirect_to(resource_stocks_url) }
      format.xml  { head :ok }
    end
  end
end
