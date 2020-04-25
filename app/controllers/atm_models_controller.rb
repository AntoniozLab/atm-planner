class AtmModelsController < ApplicationController
  before_action :set_atm_model, only: [:show, :edit, :update, :destroy]

  # GET /atm_models
  # GET /atm_models.json
  def index
    @atm_models = AtmModel.all
  end

  # GET /atm_models/1
  # GET /atm_models/1.json
  def show
  end

  # GET /atm_models/new
  def new
    @atm_model = AtmModel.new
  end

  # GET /atm_models/1/edit
  def edit
  end

  # POST /atm_models
  # POST /atm_models.json
  def create
    @atm_model = AtmModel.new(atm_model_params)

    respond_to do |format|
      if @atm_model.save
        format.html { redirect_to @atm_model, notice: 'Atm model was successfully created.' }
        format.json { render :show, status: :created, location: @atm_model }
      else
        format.html { render :new }
        format.json { render json: @atm_model.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /atm_models/1
  # PATCH/PUT /atm_models/1.json
  def update
    respond_to do |format|
      if @atm_model.update(atm_model_params)
        format.html { redirect_to @atm_model, notice: 'Atm model was successfully updated.' }
        format.json { render :show, status: :ok, location: @atm_model }
      else
        format.html { render :edit }
        format.json { render json: @atm_model.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /atm_models/1
  # DELETE /atm_models/1.json
  def destroy
    @atm_model.destroy
    respond_to do |format|
      format.html { redirect_to atm_models_url, notice: 'Atm model was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_atm_model
      @atm_model = AtmModel.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def atm_model_params
      params.require(:atm_model).permit(:name, :description, :atm_brand_id)
    end
end
