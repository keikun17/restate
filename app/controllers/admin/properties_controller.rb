class Admin::PropertiesController < Admin::MainController
  
  def index
    @properties = Property.paginate :all, :page => params[:page], :per_page => 50
  end
  
  def new
    @property = Property.new
    @property.property_photos.build
  end
  
  def create
    @property = Property.new(params[:property])
    if @property.save
      flash[:notice] = "Property saved successfully"
      redirect_to admin_properties_path
    else
      render :action => :new
    end
  end
  
  def destroy
    @property = Property.find(params[:id])
    if @property.destroy
      flash[:notice] = "Property has been lost"
    else
      flash[:error] = "YOU SHALL NOT PASS!!"
    end
    redirect_to admin_properties_path
  end
end