class BussinessTypesController < ApplicationController
  before_action :set_bussiness_type, only: [:show, :edit, :update, :destroy]

  # GET /bussiness_types
  # GET /bussiness_types.json
  def index
    @bussiness_types = BussinessType.all
  end

  # GET /bussiness_types/1
  # GET /bussiness_types/1.json
  def show
  end

  # GET /bussiness_types/new
  def new
    @bussiness_type = BussinessType.new
  end

  # GET /bussiness_types/1/edit
  def edit
  end

  # POST /bussiness_types
  # POST /bussiness_types.json
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

  # PATCH/PUT /bussiness_types/1
  # PATCH/PUT /bussiness_types/1.json
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

  # DELETE /bussiness_types/1
  # DELETE /bussiness_types/1.json
  def destroy
    @bussiness_type.destroy
    respond_to do |format|
      format.html { redirect_to bussiness_types_url, notice: 'Bussiness type was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_bussiness_type
      @bussiness_type = BussinessType.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def bussiness_type_params
      params.require(:bussiness_type).permit(:section)
    end
end
