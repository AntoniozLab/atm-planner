class AtmTypesController < ApplicationController
  before_action :set_atm_type, only: [:show, :edit, :update, :destroy]

  # GET /atm_types
  # GET /atm_types.json
  def index
    @atm_types = AtmType.all
  end

  # GET /atm_types/1
  # GET /atm_types/1.json
  def show
  end

  # GET /atm_types/new
  def new
    @atm_type = AtmType.new
  end

  # GET /atm_types/1/edit
  def edit
  end

  # POST /atm_types
  # POST /atm_types.json
  def create
    @atm_type = AtmType.new(atm_type_params)

    respond_to do |format|
      if @atm_type.save
        format.html { redirect_to @atm_type, notice: 'Atm type was successfully created.' }
        format.json { render :show, status: :created, location: @atm_type }
      else
        format.html { render :new }
        format.json { render json: @atm_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /atm_types/1
  # PATCH/PUT /atm_types/1.json
  def update
    respond_to do |format|
      if @atm_type.update(atm_type_params)
        format.html { redirect_to @atm_type, notice: 'Atm type was successfully updated.' }
        format.json { render :show, status: :ok, location: @atm_type }
      else
        format.html { render :edit }
        format.json { render json: @atm_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /atm_types/1
  # DELETE /atm_types/1.json
  def destroy
    @atm_type.destroy
    respond_to do |format|
      format.html { redirect_to atm_types_url, notice: 'Atm type was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_atm_type
      @atm_type = AtmType.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def atm_type_params
      params.require(:atm_type).permit(:name, :description)
    end
end
