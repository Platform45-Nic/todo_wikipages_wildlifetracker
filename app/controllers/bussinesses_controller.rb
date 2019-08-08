class BussinessesController < ApplicationController
  before_action :set_bussiness, only: [:show, :edit, :update, :destroy]

  def index
    @bussinesses = Bussiness.all
  end

  def show
  end

  def new
    @bussiness = Bussiness.new
  end

  def edit
  end

  def create
    @bussiness = Bussiness.new(bussiness_params)

    respond_to do |format|
      if @bussiness.save
        format.html { redirect_to @bussiness, notice: 'Bussiness was successfully created.' }
        format.json { render :show, status: :created, location: @bussiness }
      else
        format.html { render :new }
        format.json { render json: @bussiness.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @bussiness.update(bussiness_params)
        format.html { redirect_to @bussiness, notice: 'Bussiness was successfully updated.' }
        format.json { render :show, status: :ok, location: @bussiness }
      else
        format.html { render :edit }
        format.json { render json: @bussiness.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @bussiness.destroy
    respond_to do |format|
      format.html { redirect_to bussinesses_url, notice: 'Bussiness was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    def set_bussiness
      @bussiness = Bussiness.find(params[:id])
    end

    def bussiness_params
      params.require(:bussiness).permit(:name, :address, :phone, :website, :operating_hours, :bussiness_type_id)
    end
end
