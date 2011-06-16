class StandaredVisitsController < ApplicationController
  # GET /standared_visits
  # GET /standared_visits.xml
  def index
    @standared_visits = StandaredVisit.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @standared_visits }
    end
  end

  # GET /standared_visits/1
  # GET /standared_visits/1.xml
  def show
    @standared_visit = StandaredVisit.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @standared_visit }
    end
  end

  # GET /standared_visits/new
  # GET /standared_visits/new.xml
  def new
    @standared_visit = StandaredVisit.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @standared_visit }
    end
  end

  # GET /standared_visits/1/edit
  def edit
    @standared_visit = StandaredVisit.find(params[:id])
  end

  # POST /standared_visits
  # POST /standared_visits.xml
  def create
    @standared_visit = StandaredVisit.new(params[:standared_visit])

    respond_to do |format|
      if @standared_visit.save
        format.html { redirect_to(@standared_visit, :notice => 'Standared visit was successfully created.') }
        format.xml  { render :xml => @standared_visit, :status => :created, :location => @standared_visit }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @standared_visit.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /standared_visits/1
  # PUT /standared_visits/1.xml
  def update
    @standared_visit = StandaredVisit.find(params[:id])

    respond_to do |format|
      if @standared_visit.update_attributes(params[:standared_visit])
        format.html { redirect_to(@standared_visit, :notice => 'Standared visit was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @standared_visit.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /standared_visits/1
  # DELETE /standared_visits/1.xml
  def destroy
    @standared_visit = StandaredVisit.find(params[:id])
    @standared_visit.destroy

    respond_to do |format|
      format.html { redirect_to(standared_visits_url) }
      format.xml  { head :ok }
    end
  end
end
