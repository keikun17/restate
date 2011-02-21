class PropertyTypesController < ApplicationController
  # GET /property_types
  # GET /property_types.xml
  def index
    @property_types = PropertyType.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @property_types }
    end
  end

  # GET /property_types/1
  # GET /property_types/1.xml
  def show
    @property_type = PropertyType.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @property_type }
    end
  end

  # GET /property_types/new
  # GET /property_types/new.xml
  def new
    @property_type = PropertyType.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @property_type }
    end
  end

  # GET /property_types/1/edit
  def edit
    @property_type = PropertyType.find(params[:id])
  end

  # POST /property_types
  # POST /property_types.xml
  def create
    @property_type = PropertyType.new(params[:property_type])

    respond_to do |format|
      if @property_type.save
        format.html { redirect_to(@property_type, :notice => 'Property type was successfully created.') }
        format.xml  { render :xml => @property_type, :status => :created, :location => @property_type }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @property_type.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /property_types/1
  # PUT /property_types/1.xml
  def update
    @property_type = PropertyType.find(params[:id])

    respond_to do |format|
      if @property_type.update_attributes(params[:property_type])
        format.html { redirect_to(@property_type, :notice => 'Property type was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @property_type.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /property_types/1
  # DELETE /property_types/1.xml
  def destroy
    @property_type = PropertyType.find(params[:id])
    @property_type.destroy

    respond_to do |format|
      format.html { redirect_to(property_types_url) }
      format.xml  { head :ok }
    end
  end
end
