class PrayerRequestsController < ApplicationController
  # GET /prayer_requests
  # GET /prayer_requests.json
  def index
    @prayer_requests = PrayerRequest.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @prayer_requests }
    end
  end

  # GET /prayer_requests/1
  # GET /prayer_requests/1.json
  def show
    @prayer_request = PrayerRequest.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @prayer_request }
    end
  end

  # GET /prayer_requests/new
  # GET /prayer_requests/new.json
  def new
    @prayer_request = PrayerRequest.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @prayer_request }
    end
  end

  # GET /prayer_requests/1/edit
  def edit
    @prayer_request = PrayerRequest.find(params[:id])
  end

  # POST /prayer_requests
  # POST /prayer_requests.json
  def create
    @prayer_request = PrayerRequest.new(params[:prayer_request])

    respond_to do |format|
      if @prayer_request.save
        format.html { redirect_to @prayer_request, notice: 'Prayer request was successfully created.' }
        format.json { render json: @prayer_request, status: :created, location: @prayer_request }
      else
        format.html { render action: "new" }
        format.json { render json: @prayer_request.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /prayer_requests/1
  # PUT /prayer_requests/1.json
  def update
    @prayer_request = PrayerRequest.find(params[:id])

    respond_to do |format|
      if @prayer_request.update_attributes(params[:prayer_request])
        format.html { redirect_to @prayer_request, notice: 'Prayer request was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @prayer_request.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /prayer_requests/1
  # DELETE /prayer_requests/1.json
  def destroy
    @prayer_request = PrayerRequest.find(params[:id])
    @prayer_request.destroy

    respond_to do |format|
      format.html { redirect_to prayer_requests_url }
      format.json { head :no_content }
    end
  end
end
