class AdjectivesController < ApplicationController
    before_filter :authenticate_user!
  # GET /adjectives
  # GET /adjectives.xml
  def index
    @adjectives = Adjective.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @adjectives }
    end
  end

  # GET /adjectives/1
  # GET /adjectives/1.xml
  def show
    @adjective = Adjective.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @adjective }
    end
  end

  # GET /adjectives/new
  # GET /adjectives/new.xml
  def new
    @adjective = Adjective.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @adjective }
    end
  end

  # GET /adjectives/1/edit
  def edit
    @adjective = Adjective.find(params[:id])
  end

  # POST /adjectives
  # POST /adjectives.xml
  def create
    @adjective = Adjective.new(params[:adjective])

    respond_to do |format|
      if @adjective.save
        format.html { redirect_to(@adjective, :notice => 'Adjective was successfully created.') }
        format.xml  { render :xml => @adjective, :status => :created, :location => @adjective }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @adjective.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /adjectives/1
  # PUT /adjectives/1.xml
  def update
    @adjective = Adjective.find(params[:id])

    respond_to do |format|
      if @adjective.update_attributes(params[:adjective])
        format.html { redirect_to(@adjective, :notice => 'Adjective was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @adjective.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /adjectives/1
  # DELETE /adjectives/1.xml
  def destroy
    @adjective = Adjective.find(params[:id])
    @adjective.destroy

    respond_to do |format|
      format.html { redirect_to(adjectives_url) }
      format.xml  { head :ok }
    end
  end
end
