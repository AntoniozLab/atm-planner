class AtmStatesController < ApplicationController
  before_action :set_atm_state, only: [:show, :edit, :update, :destroy]

  # GET /atm_states
  # GET /atm_states.json
  def index
    @atm_states = AtmState.all
  end

  # GET /atm_states/1
  # GET /atm_states/1.json
  def show
  end

  # GET /atm_states/new
  def new
    @atm_state = AtmState.new
  end

  # GET /atm_states/1/edit
  def edit
  end

  # POST /atm_states
  # POST /atm_states.json
  def create
    @atm_state = AtmState.new(atm_state_params)

    respond_to do |format|
      if @atm_state.save
        format.html { redirect_to @atm_state, notice: 'Atm state was successfully created.' }
        format.json { render :show, status: :created, location: @atm_state }
      else
        format.html { render :new }
        format.json { render json: @atm_state.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /atm_states/1
  # PATCH/PUT /atm_states/1.json
  def update
    respond_to do |format|
      if @atm_state.update(atm_state_params)
        format.html { redirect_to @atm_state, notice: 'Atm state was successfully updated.' }
        format.json { render :show, status: :ok, location: @atm_state }
      else
        format.html { render :edit }
        format.json { render json: @atm_state.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /atm_states/1
  # DELETE /atm_states/1.json
  def destroy
    @atm_state.destroy
    respond_to do |format|
      format.html { redirect_to atm_states_url, notice: 'Atm state was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_atm_state
      @atm_state = AtmState.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def atm_state_params
      params.require(:atm_state).permit(:name)
    end
end
