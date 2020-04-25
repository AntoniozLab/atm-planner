class RequirementDetailReasonsController < ApplicationController
  before_action :set_requirement_detail_reason, only: [:show, :edit, :update, :destroy]

  # GET /requirement_detail_reasons
  # GET /requirement_detail_reasons.json
  def index
    @requirement_detail_reasons = RequirementDetailReason.all
  end

  # GET /requirement_detail_reasons/1
  # GET /requirement_detail_reasons/1.json
  def show
  end

  # GET /requirement_detail_reasons/new
  def new
    @requirement_detail_reason = RequirementDetailReason.new
  end

  # GET /requirement_detail_reasons/1/edit
  def edit
  end

  # POST /requirement_detail_reasons
  # POST /requirement_detail_reasons.json
  def create
    @requirement_detail_reason = RequirementDetailReason.new(requirement_detail_reason_params)

    respond_to do |format|
      if @requirement_detail_reason.save
        format.html { redirect_to @requirement_detail_reason, notice: 'Requirement detail reason was successfully created.' }
        format.json { render :show, status: :created, location: @requirement_detail_reason }
      else
        format.html { render :new }
        format.json { render json: @requirement_detail_reason.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /requirement_detail_reasons/1
  # PATCH/PUT /requirement_detail_reasons/1.json
  def update
    respond_to do |format|
      if @requirement_detail_reason.update(requirement_detail_reason_params)
        format.html { redirect_to @requirement_detail_reason, notice: 'Requirement detail reason was successfully updated.' }
        format.json { render :show, status: :ok, location: @requirement_detail_reason }
      else
        format.html { render :edit }
        format.json { render json: @requirement_detail_reason.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /requirement_detail_reasons/1
  # DELETE /requirement_detail_reasons/1.json
  def destroy
    @requirement_detail_reason.destroy
    respond_to do |format|
      format.html { redirect_to requirement_detail_reasons_url, notice: 'Requirement detail reason was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_requirement_detail_reason
      @requirement_detail_reason = RequirementDetailReason.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def requirement_detail_reason_params
      params.require(:requirement_detail_reason).permit(:name)
    end
end
