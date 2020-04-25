class AtmBrandsController < ApplicationController
  before_action :set_atm_brand, only: [:show, :edit, :update, :destroy]

  # GET /atm_brands
  # GET /atm_brands.json
  def index
    @atm_brands = AtmBrand.all
  end

  # GET /atm_brands/1
  # GET /atm_brands/1.json
  def show
  end

  # GET /atm_brands/new
  def new
    @atm_brand = AtmBrand.new
  end

  # GET /atm_brands/1/edit
  def edit
  end

  # POST /atm_brands
  # POST /atm_brands.json
  def create
    @atm_brand = AtmBrand.new(atm_brand_params)

    respond_to do |format|
      if @atm_brand.save
        format.html { redirect_to @atm_brand, notice: 'Atm brand was successfully created.' }
        format.json { render :show, status: :created, location: @atm_brand }
      else
        format.html { render :new }
        format.json { render json: @atm_brand.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /atm_brands/1
  # PATCH/PUT /atm_brands/1.json
  def update
    respond_to do |format|
      if @atm_brand.update(atm_brand_params)
        format.html { redirect_to @atm_brand, notice: 'Atm brand was successfully updated.' }
        format.json { render :show, status: :ok, location: @atm_brand }
      else
        format.html { render :edit }
        format.json { render json: @atm_brand.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /atm_brands/1
  # DELETE /atm_brands/1.json
  def destroy
    @atm_brand.destroy
    respond_to do |format|
      format.html { redirect_to atm_brands_url, notice: 'Atm brand was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_atm_brand
      @atm_brand = AtmBrand.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def atm_brand_params
      params.require(:atm_brand).permit(:name, :description, :atm_models_id)
    end
end
