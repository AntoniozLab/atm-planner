class RequirementTypesController < ApplicationController
  before_action :set_requirement_type, only: [:show, :edit, :update, :destroy]

  # GET /requirement_types
  # GET /requirement_types.json
  def index
    @requirement_types = RequirementType.all
  end

  # GET /requirement_types/1
  # GET /requirement_types/1.json
  def show
  end

  # GET /requirement_types/new
  def new
    @requirement_type = RequirementType.new
  end

  # GET /requirement_types/1/edit
  def edit
  end

  # POST /requirement_types
  # POST /requirement_types.json
  def create
    @requirement_type = RequirementType.new(requirement_type_params)

    respond_to do |format|
      if @requirement_type.save
        format.html { redirect_to @requirement_type, notice: 'Requirement type was successfully created.' }
        format.json { render :show, status: :created, location: @requirement_type }
      else
        format.html { render :new }
        format.json { render json: @requirement_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /requirement_types/1
  # PATCH/PUT /requirement_types/1.json
  def update
    respond_to do |format|
      if @requirement_type.update(requirement_type_params)
        format.html { redirect_to @requirement_type, notice: 'Requirement type was successfully updated.' }
        format.json { render :show, status: :ok, location: @requirement_type }
      else
        format.html { render :edit }
        format.json { render json: @requirement_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /requirement_types/1
  # DELETE /requirement_types/1.json
  def destroy
    @requirement_type.destroy
    respond_to do |format|
      format.html { redirect_to requirement_types_url, notice: 'Requirement type was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_requirement_type
      @requirement_type = RequirementType.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def requirement_type_params
      params.require(:requirement_type).permit(:name, :description)
    end
end
