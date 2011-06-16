class Admin::RegionsController < ApplicationController
  # GET /admin/regions
  # GET /admin/regions.xml
  def index
    @admin_regions = Admin::Region.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @admin_regions }
    end
  end

  # GET /admin/regions/1
  # GET /admin/regions/1.xml
  def show
    @admin_region = Admin::Region.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @admin_region }
    end
  end

  # GET /admin/regions/new
  # GET /admin/regions/new.xml
  def new
    @admin_region = Admin::Region.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @admin_region }
    end
  end

  # GET /admin/regions/1/edit
  def edit
    @admin_region = Admin::Region.find(params[:id])
  end

  # POST /admin/regions
  # POST /admin/regions.xml
  def create
    @admin_region = Admin::Region.new(params[:admin_region])

    respond_to do |format|
      if @admin_region.save
        format.html { redirect_to(@admin_region, :notice => 'Region was successfully created.') }
        format.xml  { render :xml => @admin_region, :status => :created, :location => @admin_region }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @admin_region.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /admin/regions/1
  # PUT /admin/regions/1.xml
  def update
    @admin_region = Admin::Region.find(params[:id])

    respond_to do |format|
      if @admin_region.update_attributes(params[:admin_region])
        format.html { redirect_to(@admin_region, :notice => 'Region was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @admin_region.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /admin/regions/1
  # DELETE /admin/regions/1.xml
  def destroy
    @admin_region = Admin::Region.find(params[:id])
    @admin_region.destroy

    respond_to do |format|
      format.html { redirect_to(admin_regions_url) }
      format.xml  { head :ok }
    end
  end
end
