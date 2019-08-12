class SightingsController < ApplicationController
  before_action :set_sighting, only: [:show, :edit, :update, :destroy]

  def index
    @sightings = Sighting.all
  end

  def show
    @sighting = Sighting.find(params[:id])
  end

  def new
    @sighting = Sighting.new
  end

  def edit
  end

  def create
    @sighting = Sighting.new(sighting_params)

    respond_to do |format|
      if @sighting.save
        format.html { redirect_to @sighting, notice: 'sighting was successfully created.' }
        format.json { render :show, status: :created, location: @sighting }
      else
        format.html { render :new }
        format.json { render json: @sighting.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @sighting.update(sighting_params)
        format.html { redirect_to @sighting, notice: 'sighting was successfully updated.' }
        format.json { render :show, status: :ok, location: @sighting }
      else
        format.html { render :edit }
        format.json { render json: @sighting.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @sighting.destroy
    respond_to do |format|
      format.html { redirect_to sightings_url, notice: 'sighting was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    def set_sighting
      @sighting = Sighting.find(params[:id])
    end

    def sighting_params
      params.require(:sighting).permit(:amount_in_one_session, :date, :latitude, :longitude, :animal_id, :region_id)
    end
end
