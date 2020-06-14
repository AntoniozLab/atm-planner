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
    # @requirement.requirement_details.build
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

  def update_atm_state(rqTypeId, atmOldId, atmNewId)
    puts '-------- update_atm_state ------------'
    # puts "rqTypeId: " + rqTypeId
    puts "atmOldId: " + atmOldId.to_s
    puts "atmNewId: " + atmNewId.to_s

    # Cambio de estado para nueva instalación completada, pasa a produccion (id 1)
    if rqTypeId.to_s === "1"
      puts '=========> Pasa a produccción'
      Atm.find(atmNewId).update_attributes(:atm_state_id => 1)
    end

    # Cambio de estado para retiro completo, pasa a stock (id 2)
    if rqTypeId.to_s === "2"
      puts '===============> Pasa a Stock'

      Atm.find(atmOldId).update_attributes(:atm_state_id => 2)
    end

    # Cambio de estado para movimiento completado, el nuevo pasa a produccion(id 1) y el anterior pasa a stock (id 2)
    if rqTypeId.to_s === "3"
      puts 'tressssssssssssssss'

      Atm.find(atmNewId).update_attributes(:atm_state_id => 1)
      Atm.find(atmOldId).update_attributes(:atm_state_id => 2)
    end


  end

  # PATCH/PUT /requirements/1
  # PATCH/PUT /requirements/1.json
  def update

    respond_to do |format|
      if @requirement.update(requirement_params)
        puts '--------------- update -------------------'
        puts requirement_params
        detailsObject = requirement_params[:requirement_details_attributes]["0"]

        # Verifica si existe end_date de la operación del cajero
        if detailsObject.has_key? "end_date(1i)" and detailsObject["end_date(1i)"] != ""

          completionDate = Date.new(detailsObject["end_date(1i)"].to_i, detailsObject["end_date(2i)"].to_i, detailsObject["end_date(3i)"].to_i)
          rqTypeId = detailsObject[:requirement_type_id]
          atmNewId = detailsObject[:atm_new]
          atmOldId = detailsObject[:atm_old]
          update_atm_state(rqTypeId, atmOldId, atmNewId)
        end

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


      # Recuperado al fecha de completado del cajero
      detailsObject = params[:requirement][:requirement_details_attributes]["0"];

      # Asigna una fecha de completado al requerimiento usando la fecha de completado del detalle de requerimiento

      # Verifica que existe una fecha de completado
      if detailsObject.has_key? "end_date(1i)" and detailsObject["end_date(1i)"] != ""
        completionDate = Date.new(detailsObject["end_date(1i)"].to_i, detailsObject["end_date(2i)"].to_i, detailsObject["end_date(3i)"].to_i)

        # Asigna la fecha de completado a todo el requerimiento
        params[:requirement][:completion_date] = completionDate

        # Asigna estado "completado" al requerimiento
        params[:requirement][:requirement_state_id] = 2

        # Cambia el estado a completado del detalle de requerimiento
        puts "================================ ok ================"
        puts params[:requirement][:requirement_details_attributes]["0"][:requirement_detail_state_id] = 3
      end

      # Se le agrega al final todos los parámetros de un detalle de requerimiento
      params.require(:requirement).permit(:description, :request_date, :completion_date, :percentage_success, :user_assigned, :attachment_url, :user_id, :requirement_state_id, :location_id, requirement_details_attributes: RequirementDetail.attribute_names.map(&:to_sym).push(:_destroy))
    end
end
