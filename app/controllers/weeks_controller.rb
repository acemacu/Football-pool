class WeeksController < ApplicationController
  # GET /weeks
  # GET /weeks.xml
  def index
    @season = Season.find(params[:season_id])
    @weeks = @season.weeks

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @weeks }
    end
  end

  # GET /weeks/1
  # GET /weeks/1.xml
  def show
    @season = Season.find(params[:season_id])
    @week = @season.weeks.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @week }
    end
  end

  # GET /weeks/new
  # GET /weeks/new.xml
  def new
    @season = Season.find(params[:season_id])
    @week = @season.weeks.new
    
    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @week }
    end
  end

  # GET /weeks/1/edit
  def edit
    @season = Season.find(params[:season_id])
    @week = @season.weeks.find(params[:id])
  end

  # POST /weeks
  # POST /weeks.xml
  def create
    @season = Season.find(params[:season_id])
    @week = @season.weeks.new(params[:week])

    respond_to do |format|
      if @week.save
        format.html { redirect_to season_week_url(@season, @week) }
        format.xml  { render :xml => @week, :status => :created, :location => @week }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @week.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /weeks/1
  # PUT /weeks/1.xml
  def update
    @season = Season.find(params[:season_id])
    @week = Week.find(params[:id])

    respond_to do |format|
      if @week.update_attributes(params[:week])
        format.html { redirect_to(@week, :notice => 'Week was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @week.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /weeks/1
  # DELETE /weeks/1.xml
  def destroy
    @season = Season.find(params[:season_id])
    @week = Week.find(params[:id])
    @week.destroy

    respond_to do |format|
      format.html { redirect_to season_weeks_path(@season) }
      format.xml  { head :ok }
    end
  end
end
