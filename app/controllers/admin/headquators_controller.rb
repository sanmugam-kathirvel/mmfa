class Admin::HeadquatorsController < ApplicationController
  # GET /admin/headquators
  # GET /admin/headquators.xml
  def index
    @admin_headquators = Admin::Headquator.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @admin_headquators }
    end
  end

  # GET /admin/headquators/1
  # GET /admin/headquators/1.xml
  def show
    @admin_headquator = Admin::Headquator.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @admin_headquator }
    end
  end

  # GET /admin/headquators/new
  # GET /admin/headquators/new.xml
  def new
    @admin_headquator = Admin::Headquator.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @admin_headquator }
    end
  end

  # GET /admin/headquators/1/edit
  def edit
    @admin_headquator = Admin::Headquator.find(params[:id])
  end

  # POST /admin/headquators
  # POST /admin/headquators.xml
  def create
    @admin_headquator = Admin::Headquator.new(params[:admin_headquator])

    respond_to do |format|
      if @admin_headquator.save
        format.html { redirect_to(@admin_headquator, :notice => 'Headquator was successfully created.') }
        format.xml  { render :xml => @admin_headquator, :status => :created, :location => @admin_headquator }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @admin_headquator.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /admin/headquators/1
  # PUT /admin/headquators/1.xml
  def update
    @admin_headquator = Admin::Headquator.find(params[:id])

    respond_to do |format|
      if @admin_headquator.update_attributes(params[:admin_headquator])
        format.html { redirect_to(@admin_headquator, :notice => 'Headquator was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @admin_headquator.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /admin/headquators/1
  # DELETE /admin/headquators/1.xml
  def destroy
    @admin_headquator = Admin::Headquator.find(params[:id])
    @admin_headquator.destroy

    respond_to do |format|
      format.html { redirect_to(admin_headquators_url) }
      format.xml  { head :ok }
    end
  end
end
