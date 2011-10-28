class GameDaysController < ApplicationController
  # GET /game_days
  # GET /game_days.xml
  def index
    @game_days = GameDay.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @game_days }
    end
  end

  # GET /game_days/1
  # GET /game_days/1.xml
  def show
    @game_day = GameDay.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @game_day }
    end
  end

  # GET /game_days/new
  # GET /game_days/new.xml
  def new
    @game_day = GameDay.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @game_day }
    end
  end

  # GET /game_days/1/edit
  def edit
    @game_day = GameDay.find(params[:id])
  end

  # POST /game_days
  # POST /game_days.xml
  def create
    @game_day = GameDay.new(params[:game_day])

    respond_to do |format|
      if @game_day.save
        format.html { redirect_to(@game_day, :notice => 'Game day was successfully created.') }
        format.xml  { render :xml => @game_day, :status => :created, :location => @game_day }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @game_day.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /game_days/1
  # PUT /game_days/1.xml
  def update
    @game_day = GameDay.find(params[:id])

    respond_to do |format|
      if @game_day.update_attributes(params[:game_day])
        format.html { redirect_to(@game_day, :notice => 'Game day was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @game_day.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /game_days/1
  # DELETE /game_days/1.xml
  def destroy
    @game_day = GameDay.find(params[:id])
    @game_day.destroy

    respond_to do |format|
      format.html { redirect_to(game_days_url) }
      format.xml  { head :ok }
    end
  end
end
