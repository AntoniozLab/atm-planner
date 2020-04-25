class RequirementDetailStatesController < ApplicationController
  before_action :set_requirement_detail_state, only: [:show, :edit, :update, :destroy]

  # GET /requirement_detail_states
  # GET /requirement_detail_states.json
  def index
    @requirement_detail_states = RequirementDetailState.all
  end

  # GET /requirement_detail_states/1
  # GET /requirement_detail_states/1.json
  def show
  end

  # GET /requirement_detail_states/new
  def new
    @requirement_detail_state = RequirementDetailState.new
  end

  # GET /requirement_detail_states/1/edit
  def edit
  end

  # POST /requirement_detail_states
  # POST /requirement_detail_states.json
  def create
    @requirement_detail_state = RequirementDetailState.new(requirement_detail_state_params)

    respond_to do |format|
      if @requirement_detail_state.save
        format.html { redirect_to @requirement_detail_state, notice: 'Requirement detail state was successfully created.' }
        format.json { render :show, status: :created, location: @requirement_detail_state }
      else
        format.html { render :new }
        format.json { render json: @requirement_detail_state.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /requirement_detail_states/1
  # PATCH/PUT /requirement_detail_states/1.json
  def update
    respond_to do |format|
      if @requirement_detail_state.update(requirement_detail_state_params)
        format.html { redirect_to @requirement_detail_state, notice: 'Requirement detail state was successfully updated.' }
        format.json { render :show, status: :ok, location: @requirement_detail_state }
      else
        format.html { render :edit }
        format.json { render json: @requirement_detail_state.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /requirement_detail_states/1
  # DELETE /requirement_detail_states/1.json
  def destroy
    @requirement_detail_state.destroy
    respond_to do |format|
      format.html { redirect_to requirement_detail_states_url, notice: 'Requirement detail state was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_requirement_detail_state
      @requirement_detail_state = RequirementDetailState.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def requirement_detail_state_params
      params.require(:requirement_detail_state).permit(:name)
    end
end
