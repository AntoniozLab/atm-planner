class RequirementStatesController < ApplicationController
  before_action :set_requirement_state, only: [:show, :edit, :update, :destroy]

  # GET /requirement_states
  # GET /requirement_states.json
  def index
    @requirement_states = RequirementState.all
  end

  # GET /requirement_states/1
  # GET /requirement_states/1.json
  def show
  end

  # GET /requirement_states/new
  def new
    @requirement_state = RequirementState.new
  end

  # GET /requirement_states/1/edit
  def edit
  end

  # POST /requirement_states
  # POST /requirement_states.json
  def create
    @requirement_state = RequirementState.new(requirement_state_params)

    respond_to do |format|
      if @requirement_state.save
        format.html { redirect_to @requirement_state, notice: 'Requirement state was successfully created.' }
        format.json { render :show, status: :created, location: @requirement_state }
      else
        format.html { render :new }
        format.json { render json: @requirement_state.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /requirement_states/1
  # PATCH/PUT /requirement_states/1.json
  def update
    respond_to do |format|
      if @requirement_state.update(requirement_state_params)
        format.html { redirect_to @requirement_state, notice: 'Requirement state was successfully updated.' }
        format.json { render :show, status: :ok, location: @requirement_state }
      else
        format.html { render :edit }
        format.json { render json: @requirement_state.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /requirement_states/1
  # DELETE /requirement_states/1.json
  def destroy
    @requirement_state.destroy
    respond_to do |format|
      format.html { redirect_to requirement_states_url, notice: 'Requirement state was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_requirement_state
      @requirement_state = RequirementState.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def requirement_state_params
      params.require(:requirement_state).permit(:name)
    end
end
