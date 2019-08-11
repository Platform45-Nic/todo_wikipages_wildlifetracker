class BusinessTypesController < ApplicationController
  before_action :set_business_type, only: [:show, :edit, :update, :destroy]

  def index
    @business_types = BusinessType.all
  end

  def show
    @businesses = Business.where(:business_type_id => @business_type.id).all
  end

  def new
    @business_type = BusinessType.new
  end

  def edit
  end

  def create
    @business_type = BusinessType.new(business_type_params)

    respond_to do |format|
      if @business_type.save
        format.html { redirect_to @business_type, notice: 'Business type was successfully created.' }
        format.json { render :show, status: :created, location: @business_type }
      else
        format.html { render :new }
        format.json { render json: @business_type.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @business_type.update(business_type_params)
        format.html { redirect_to @business_type, notice: 'Business type was successfully updated.' }
        format.json { render :show, status: :ok, location: @business_type }
      else
        format.html { render :edit }
        format.json { render json: @business_type.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @business_type.destroy
    respond_to do |format|
      format.html { redirect_to business_types_url, notice: 'Business type was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    def set_business_type
      @business_type = BusinessType.find(params[:id])
    end

    def business_type_params
      params.require(:business_type).permit(:section)
    end
end
