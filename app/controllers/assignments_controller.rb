class AssignmentsController < ApplicationController
  # GET /assignments
  # GET /assignments.xml
  def index
    @assignments = Assignment.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @assignments }
    end
  end

  # GET /assignments/1
  # GET /assignments/1.xml
  def show
    @assignment = Assignment.find(params[:id])

    render :layout => false
  end

  # GET /assignments/new
  # GET /assignments/new.xml
  def new
    @assignment = Assignment.new

    @goal = Goal.find(params[:goal_id])

    render :layout => false
  end

  # GET /assignments/1/edit
  def edit
    @assignment = Assignment.find(params[:id])
  end

  # POST /assignments
  # POST /assignments.xml
  def create
    @assignment = Assignment.new(params[:assignment])

    if @assignment.save
      render :json => {:id => @assignment.id, :msg =>"Successfully added assignment",:result=>"<li>#{@assignment.user.email} - #{@assignment.task}"}
    else
      render :json => {:msg =>"Assignment was unsuccessful",:result=>""}
    end
  end

  # PUT /assignments/1
  # PUT /assignments/1.xml
  def update
    @assignment = Assignment.find(params[:id])

    respond_to do |format|
      if @assignment.update_attributes(params[:assignment])
        format.html { redirect_to(@assignment, :notice => 'Assignment was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @assignment.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /assignments/1
  # DELETE /assignments/1.xml
  def destroy
    @assignment = Assignment.find(params[:id])
    @assignment.destroy

    respond_to do |format|
      format.html { redirect_to(assignments_url) }
      format.xml  { head :ok }
    end
  end
end
