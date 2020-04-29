class RequirementsController < ApplicationController
  # Verifica si esta logueado
  before_action :authenticate_user!

  before_action :set_requirement, only: [:show, :edit, :update, :destroy]

  # GET /requirements
  # GET /requirements.json
  def index
    @requirements = Requirement.all
  end

  # GET /requirements/1
  # GET /requirements/1.json
  def show
  end

  # GET /requirements/new
  def new
    # @users = User.all
    @requirement = Requirement.new
    @requirement.requirement_details.build

    # Valores por defecto al crear un Requerimiento
    # @default_requirement_detail_state_id
  end

  # GET /requirements/1/edit
  def edit
    @requirement.requirement_details.build
  end

  # POST /requirements
  # POST /requirements.json
  def create
    @requirement = Requirement.new(requirement_params)

    respond_to do |format|
      if @requirement.save
        format.html { redirect_to @requirement, notice: 'Requirement was successfully created.' }
        format.json { render :show, status: :created, location: @requirement }
      else
        format.html { render :new }
        format.json { render json: @requirement.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /requirements/1
  # PATCH/PUT /requirements/1.json
  def update
    respond_to do |format|
      if @requirement.update(requirement_params)
        format.html { redirect_to @requirement, notice: 'Requirement was successfully updated.' }
        format.json { render :show, status: :ok, location: @requirement }
      else
        format.html { render :edit }
        format.json { render json: @requirement.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /requirements/1
  # DELETE /requirements/1.json
  def destroy
    @requirement.destroy
    respond_to do |format|
      format.html { redirect_to requirements_url, notice: 'Requirement was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_requirement
      @requirement = Requirement.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def requirement_params
      # params.require(:requirement).permit(:description, :request_date, :completion_date, :percentage_success, :user_assigned, :attachment_url, :user_id, :requirement_state_id, :location_id)

      # Se le agrega al final todos los parámetros de un detalle de requerimiento
      params.require(:requirement).permit(:description, :request_date, :completion_date, :percentage_success, :user_assigned, :attachment_url, :user_id, :requirement_state_id, :location_id, requirement_details_attributes: RequirementDetail.attribute_names.map(&:to_sym).push(:_destroy))
    end
end
