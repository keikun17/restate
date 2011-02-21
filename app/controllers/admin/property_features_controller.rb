class Admin::PropertyFeaturesController < Admin::MainController
  # GET /property_features
  # GET /property_features.xml
  def index
    @property_features = PropertyFeature.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @property_features }
    end
  end

  # GET /property_features/1
  # GET /property_features/1.xml
  def show
    @property_feature = PropertyFeature.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @property_feature }
    end
  end

  # GET /property_features/new
  # GET /property_features/new.xml
  def new
    @property_feature = PropertyFeature.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @property_feature }
    end
  end

  # GET /property_features/1/edit
  def edit
    @property_feature = PropertyFeature.find(params[:id])
  end

  # POST /property_features
  # POST /property_features.xml
  def create
    @property_feature = PropertyFeature.new(params[:property_feature])

    respond_to do |format|
      if @property_feature.save
        format.html { redirect_to(@property_feature, :notice => 'Property feature was successfully created.') }
        format.xml  { render :xml => @property_feature, :status => :created, :location => @property_feature }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @property_feature.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /property_features/1
  # PUT /property_features/1.xml
  def update
    @property_feature = PropertyFeature.find(params[:id])

    respond_to do |format|
      if @property_feature.update_attributes(params[:property_feature])
        format.html { redirect_to(@property_feature, :notice => 'Property feature was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @property_feature.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /property_features/1
  # DELETE /property_features/1.xml
  def destroy
    @property_feature = PropertyFeature.find(params[:id])
    @property_feature.destroy

    respond_to do |format|
      format.html { redirect_to(property_features_url) }
      format.xml  { head :ok }
    end
  end
end
