class PrayersController < ApplicationController

  skip_before_filter :authorize, :only => [:new, :create]

  # GET /prayers
  # GET /prayers.json
  def index
    @prayers = Prayer.where("user_id = ?", getUser())

    @prayer_requests = PrayerRequest.all        
    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @prayers }
    end
  end

  # GET /prayers/1
  # GET /prayers/1.json
  def show
    @request = PrayerRequest.find(params[:id])
    @prayers = Prayer.where("prayer_request_id = ? AND user_id = ?", @request.id, getUser().id)
    @prayers.each do |prayer| 
      prayer.destroy
    end

    redirect_to prayers_path
  end

  # GET /prayers/new
  # GET /prayers/new.json
  def new
    @prayer = Prayer.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @prayer }
    end

  end

  # GET /prayers/1/edit
  def edit
    @prayer = Prayer.find(params[:id])
  end

  # POST /prayers
  # POST /prayers.json
  def create
    @prayer = Prayer.new(params[:prayer])
    @prayer.user = getUser();
    @prayer.save

    redirect_to root_url
  end

  # PUT /prayers/1
  # PUT /prayers/1.json
  def update
    @prayer = Prayer.find(params[:id])

    respond_to do |format|
      if @prayer.update_attributes(params[:prayer])
        format.html { redirect_to @prayer, notice: 'Prayer was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @prayer.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /prayers/1
  # DELETE /prayers/1.json
  def destroy
    @request = PrayerRequest.find(params[:id])
    @prayers = Prayer.where("prayer_request_id = ?", @request.id)
    @prayers.each do |prayer| 
      prayer.destroy
    end

    respond_to do |format|
      format.html { redirect_to prayers_url }
      format.json { head :no_content }
    end
  end
end
