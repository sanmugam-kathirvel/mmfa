class DoctorSpelsController < ApplicationController
  # GET /doctor_spels
  # GET /doctor_spels.xml
  def index
    @doctor_spels = DoctorSpel.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @doctor_spels }
    end
  end

  # GET /doctor_spels/1
  # GET /doctor_spels/1.xml
  def show
    @doctor_spel = DoctorSpel.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @doctor_spel }
    end
  end

  # GET /doctor_spels/new
  # GET /doctor_spels/new.xml
  def new
    @doctor_spel = DoctorSpel.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @doctor_spel }
    end
  end

  # GET /doctor_spels/1/edit
  def edit
    @doctor_spel = DoctorSpel.find(params[:id])
  end

  # POST /doctor_spels
  # POST /doctor_spels.xml
  def create
    @doctor_spel = DoctorSpel.new(params[:doctor_spel])

    respond_to do |format|
      if @doctor_spel.save
        format.html { redirect_to(@doctor_spel, :notice => 'Doctor spel was successfully created.') }
        format.xml  { render :xml => @doctor_spel, :status => :created, :location => @doctor_spel }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @doctor_spel.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /doctor_spels/1
  # PUT /doctor_spels/1.xml
  def update
    @doctor_spel = DoctorSpel.find(params[:id])

    respond_to do |format|
      if @doctor_spel.update_attributes(params[:doctor_spel])
        format.html { redirect_to(@doctor_spel, :notice => 'Doctor spel was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @doctor_spel.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /doctor_spels/1
  # DELETE /doctor_spels/1.xml
  def destroy
    @doctor_spel = DoctorSpel.find(params[:id])
    @doctor_spel.destroy

    respond_to do |format|
      format.html { redirect_to(doctor_spels_url) }
      format.xml  { head :ok }
    end
  end
end
