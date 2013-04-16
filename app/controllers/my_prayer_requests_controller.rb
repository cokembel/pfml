class MyPrayerRequestsController < ApplicationController

  # GET /my_prayer_requests
  # GET /my_prayer_requests.json
  def index
    @my_prayer_requests = PrayerRequest.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @my_prayer_requests }
    end
  end

  # GET /my_prayer_requests/1
  # GET /my_prayer_requests/1.json
  def show
    @my_prayer_request = PrayerRequest.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @my_prayer_request }
    end
  end

  # GET /my_prayer_requests/new
  # GET /my_prayer_requests/new.json
  def new
    @my_prayer_request = PrayerRequest.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @my_prayer_request }
    end
  end

  # GET /my_prayer_requests/1/edit
  def edit
    @my_prayer_request = PrayerRequest.find(params[:id])
  end

  # POST /my_prayer_requests
  # POST /my_prayer_requests.json
  def create
    @my_prayer_request = PrayerRequest.new(params[:my_prayer_request])

    respond_to do |format|
      if @my_prayer_request.save
        format.html { redirect_to @my_prayer_request, notice: 'My prayer request was successfully created.' }
        format.json { render json: @my_prayer_request, status: :created, location: @my_prayer_request }
      else
        format.html { render action: "new" }
        format.json { render json: @my_prayer_request.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /my_prayer_requests/1
  # PUT /my_prayer_requests/1.json
  def update
    @my_prayer_request = PrayerRequest.find(params[:id])

    respond_to do |format|
      if @my_prayer_request.update_attributes(params[:my_prayer_request])
        format.html { redirect_to @my_prayer_request, notice: 'My prayer request was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @my_prayer_request.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /my_prayer_requests/1
  # DELETE /my_prayer_requests/1.json
  def destroy
    @my_prayer_request = PrayerRequest.find(params[:id])
    @my_prayer_request.destroy

    respond_to do |format|
      format.html { redirect_to my_prayer_requests_url }
      format.json { head :no_content }
    end
  end
end
