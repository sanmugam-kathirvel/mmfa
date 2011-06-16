class ClassificationDoctorsController < ApplicationController
  # GET /classification_doctors
  # GET /classification_doctors.xml
  def index
    @classification_doctors = ClassificationDoctor.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @classification_doctors }
    end
  end

  # GET /classification_doctors/1
  # GET /classification_doctors/1.xml
  def show
    @classification_doctor = ClassificationDoctor.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @classification_doctor }
    end
  end

  # GET /classification_doctors/new
  # GET /classification_doctors/new.xml
  def new
    @classification_doctor = ClassificationDoctor.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @classification_doctor }
    end
  end

  # GET /classification_doctors/1/edit
  def edit
    @classification_doctor = ClassificationDoctor.find(params[:id])
  end

  # POST /classification_doctors
  # POST /classification_doctors.xml
  def create
    @classification_doctor = ClassificationDoctor.new(params[:classification_doctor])

    respond_to do |format|
      if @classification_doctor.save
        format.html { redirect_to(@classification_doctor, :notice => 'Classification doctor was successfully created.') }
        format.xml  { render :xml => @classification_doctor, :status => :created, :location => @classification_doctor }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @classification_doctor.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /classification_doctors/1
  # PUT /classification_doctors/1.xml
  def update
    @classification_doctor = ClassificationDoctor.find(params[:id])

    respond_to do |format|
      if @classification_doctor.update_attributes(params[:classification_doctor])
        format.html { redirect_to(@classification_doctor, :notice => 'Classification doctor was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @classification_doctor.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /classification_doctors/1
  # DELETE /classification_doctors/1.xml
  def destroy
    @classification_doctor = ClassificationDoctor.find(params[:id])
    @classification_doctor.destroy

    respond_to do |format|
      format.html { redirect_to(classification_doctors_url) }
      format.xml  { head :ok }
    end
  end
end
