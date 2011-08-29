class ResturantsController < ApplicationController
  # GET /resturants
  # GET /resturants.xml
  def index
    @resturants = Resturant.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @resturants }
    end
  end

  # GET /resturants/1
  # GET /resturants/1.xml
  def show
    @resturant = Resturant.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @resturant }
    end
  end

  # GET /resturants/new
  # GET /resturants/new.xml
  def new
    @resturant = Resturant.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @resturant }
    end
  end

  # GET /resturants/1/edit
  def edit
    @resturant = Resturant.find(params[:id])
  end

  # POST /resturants
  # POST /resturants.xml
  def create
    @resturant = Resturant.new(params[:resturant])

    respond_to do |format|
      if @resturant.save
        format.html { redirect_to(@resturant, :notice => 'Resturant was successfully created.') }
        format.xml  { render :xml => @resturant, :status => :created, :location => @resturant }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @resturant.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /resturants/1
  # PUT /resturants/1.xml
  def update
    @resturant = Resturant.find(params[:id])

    respond_to do |format|
      if @resturant.update_attributes(params[:resturant])
        format.html { redirect_to(@resturant, :notice => 'Resturant was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @resturant.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /resturants/1
  # DELETE /resturants/1.xml
  def destroy
    @resturant = Resturant.find(params[:id])
    @resturant.destroy

    respond_to do |format|
      format.html { redirect_to(resturants_url) }
      format.xml  { head :ok }
    end
  end
end
