class RequirementDetailsController < ApplicationController
  before_action :set_requirement_detail, only: [:show, :edit, :update, :destroy]

  # GET /requirement_details
  # GET /requirement_details.json
  def index
    @requirement_details = RequirementDetail.all
  end

  # GET /requirement_details/1
  # GET /requirement_details/1.json
  def show
  end

  # GET /requirement_details/new
  def new
    @requirement_detail = RequirementDetail.new
  end

  # GET /requirement_details/1/edit
  def edit
  end

  # POST /requirement_details
  # POST /requirement_details.json
  def create
    @requirement_detail = RequirementDetail.new(requirement_detail_params)

    respond_to do |format|
      if @requirement_detail.save
        format.html { redirect_to @requirement_detail, notice: 'Requirement detail was successfully created.' }
        format.json { render :show, status: :created, location: @requirement_detail }
      else
        format.html { render :new }
        format.json { render json: @requirement_detail.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /requirement_details/1
  # PATCH/PUT /requirement_details/1.json
  def update
    respond_to do |format|
      if @requirement_detail.update(requirement_detail_params)
        format.html { redirect_to @requirement_detail, notice: 'Requirement detail was successfully updated.' }
        format.json { render :show, status: :ok, location: @requirement_detail }
      else
        format.html { render :edit }
        format.json { render json: @requirement_detail.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /requirement_details/1
  # DELETE /requirement_details/1.json
  def destroy
    @requirement_detail.destroy
    respond_to do |format|
      format.html { redirect_to requirement_details_url, notice: 'Requirement detail was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_requirement_detail
      @requirement_detail = RequirementDetail.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def requirement_detail_params
      params.require(:requirement_detail).permit(:description, :start_date, :end_date, :cancel_observation, :atm_new, :atm_old, :requirement_id, :requirement_type_id, :requirement_detail_state_id, :requirement_detail_reason_id)
    end
end
