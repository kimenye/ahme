class AccouncementsController < ApplicationController
  # GET /accouncements
  # GET /accouncements.json
  def index
    @accouncements = Accouncement.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @accouncements }
    end
  end

  # GET /accouncements/1
  # GET /accouncements/1.json
  def show
    @accouncement = Accouncement.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @accouncement }
    end
  end

  # GET /accouncements/new
  # GET /accouncements/new.json
  def new
    @accouncement = Accouncement.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @accouncement }
    end
  end

  # GET /accouncements/1/edit
  def edit
    @accouncement = Accouncement.find(params[:id])
  end

  # POST /accouncements
  # POST /accouncements.json
  def create
    @accouncement = Accouncement.new(params[:accouncement])

    respond_to do |format|
      if @accouncement.save
        format.html { redirect_to @accouncement, notice: 'Accouncement was successfully created.' }
        format.json { render json: @accouncement, status: :created, location: @accouncement }
      else
        format.html { render action: "new" }
        format.json { render json: @accouncement.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /accouncements/1
  # PUT /accouncements/1.json
  def update
    @accouncement = Accouncement.find(params[:id])

    respond_to do |format|
      if @accouncement.update_attributes(params[:accouncement])
        format.html { redirect_to @accouncement, notice: 'Accouncement was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @accouncement.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /accouncements/1
  # DELETE /accouncements/1.json
  def destroy
    @accouncement = Accouncement.find(params[:id])
    @accouncement.destroy

    respond_to do |format|
      format.html { redirect_to accouncements_url }
      format.json { head :no_content }
    end
  end
end
