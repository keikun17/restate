class CondosController < ApplicationController
  # GET /condos
  # GET /condos.xml
  def index
    @condos = Condo.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @condos }
    end
  end

  # GET /condos/1
  # GET /condos/1.xml
  def show
    @condo = Condo.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @condo }
    end
  end

  # GET /condos/new
  # GET /condos/new.xml
  def new
    @condo = Condo.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @condo }
    end
  end

  # GET /condos/1/edit
  def edit
    @condo = Condo.find(params[:id])
  end

  # POST /condos
  # POST /condos.xml
  def create
    @condo = Condo.new(params[:condo])

    respond_to do |format|
      if @condo.save
        format.html { redirect_to(@condo, :notice => 'Condo was successfully created.') }
        format.xml  { render :xml => @condo, :status => :created, :location => @condo }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @condo.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /condos/1
  # PUT /condos/1.xml
  def update
    @condo = Condo.find(params[:id])

    respond_to do |format|
      if @condo.update_attributes(params[:condo])
        format.html { redirect_to(@condo, :notice => 'Condo was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @condo.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /condos/1
  # DELETE /condos/1.xml
  def destroy
    @condo = Condo.find(params[:id])
    @condo.destroy

    respond_to do |format|
      format.html { redirect_to(condos_url) }
      format.xml  { head :ok }
    end
  end
end
