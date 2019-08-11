class AnimalController < ApplicationController
  before_action :set_bussiness_type, only: [:show, :edit, :update, :destroy]

  def index
    @animals = Animal.all
  end

  def show
    @animal = Animal.where(:animal_id => @animals.id).all
  end

  def new
    @bussiness_type = BussinessType.new
  end

  def edit
  end

  def create
    @bussiness_type = BussinessType.new(bussiness_type_params)

    respond_to do |format|
      if @bussiness_type.save
        format.html { redirect_to @bussiness_type, notice: 'Bussiness type was successfully created.' }
        format.json { render :show, status: :created, location: @bussiness_type }
      else
        format.html { render :new }
        format.json { render json: @bussiness_type.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @bussiness_type.update(bussiness_type_params)
        format.html { redirect_to @bussiness_type, notice: 'Bussiness type was successfully updated.' }
        format.json { render :show, status: :ok, location: @bussiness_type }
      else
        format.html { render :edit }
        format.json { render json: @bussiness_type.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @bussiness_type.destroy
    respond_to do |format|
      format.html { redirect_to bussiness_types_url, notice: 'Bussiness type was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    def set_bussiness_type
      @bussiness_type = BussinessType.find(params[:id])
    end

    def bussiness_type_params
      params.require(:bussiness_type).permit(:section)
    end
end
