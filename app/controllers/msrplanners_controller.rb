class MsrplannersController < ApplicationController
  # GET /msrplanners
  # GET /msrplanners.xml
  def index
    @msrplanners = Msrplanner.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @msrplanners }
    end
  end

  # GET /msrplanners/1
  # GET /msrplanners/1.xml
  def show
    @msrplanner = Msrplanner.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @msrplanner }
    end
  end

  # GET /msrplanners/new
  # GET /msrplanners/new.xml
  def new
    @msrplanner = Msrplanner.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @msrplanner }
    end
  end

  # GET /msrplanners/1/edit
  def edit
    @msrplanner = Msrplanner.find(params[:id])
  end

  # POST /msrplanners
  # POST /msrplanners.xml
  def create
    @msrplanner = Msrplanner.new(params[:msrplanner])

    respond_to do |format|
      if @msrplanner.save
        format.html { redirect_to(@msrplanner, :notice => 'Msrplanner was successfully created.') }
        format.xml  { render :xml => @msrplanner, :status => :created, :location => @msrplanner }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @msrplanner.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /msrplanners/1
  # PUT /msrplanners/1.xml
  def update
    @msrplanner = Msrplanner.find(params[:id])

    respond_to do |format|
      if @msrplanner.update_attributes(params[:msrplanner])
        format.html { redirect_to(@msrplanner, :notice => 'Msrplanner was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @msrplanner.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /msrplanners/1
  # DELETE /msrplanners/1.xml
  def destroy
    @msrplanner = Msrplanner.find(params[:id])
    @msrplanner.destroy

    respond_to do |format|
      format.html { redirect_to(msrplanners_url) }
      format.xml  { head :ok }
    end
  end
end
