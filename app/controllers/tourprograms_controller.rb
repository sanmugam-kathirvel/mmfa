class TourprogramsController < ApplicationController
  # GET /tourprograms
  # GET /tourprograms.xml
  def index
    @tourprograms = Tourprogram.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @tourprograms }
    end
  end

  # GET /tourprograms/1
  # GET /tourprograms/1.xml
  def show
    @tourprogram = Tourprogram.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @tourprogram }
    end
  end

  # GET /tourprograms/new
  # GET /tourprograms/new.xml
  def new
    @tourprogram = Tourprogram.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @tourprogram }
    end
  end

  # GET /tourprograms/1/edit
  def edit
    @tourprogram = Tourprogram.find(params[:id])
  end

  # POST /tourprograms
  # POST /tourprograms.xml
  def create
    @tourprogram = Tourprogram.new(params[:tourprogram])

    respond_to do |format|
      if @tourprogram.save
        format.html { redirect_to(@tourprogram, :notice => 'Tourprogram was successfully created.') }
        format.xml  { render :xml => @tourprogram, :status => :created, :location => @tourprogram }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @tourprogram.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /tourprograms/1
  # PUT /tourprograms/1.xml
  def update
    @tourprogram = Tourprogram.find(params[:id])

    respond_to do |format|
      if @tourprogram.update_attributes(params[:tourprogram])
        format.html { redirect_to(@tourprogram, :notice => 'Tourprogram was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @tourprogram.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /tourprograms/1
  # DELETE /tourprograms/1.xml
  def destroy
    @tourprogram = Tourprogram.find(params[:id])
    @tourprogram.destroy

    respond_to do |format|
      format.html { redirect_to(tourprograms_url) }
      format.xml  { head :ok }
    end
  end
end
