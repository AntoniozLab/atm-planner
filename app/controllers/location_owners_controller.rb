class LocationOwnersController < ApplicationController
  before_action :set_location_owner, only: [:show, :edit, :update, :destroy]

  # GET /location_owners
  # GET /location_owners.json
  def index
    @location_owners = LocationOwner.all
  end

  # GET /location_owners/1
  # GET /location_owners/1.json
  def show
  end

  # GET /location_owners/new
  def new
    @location_owner = LocationOwner.new
  end

  # GET /location_owners/1/edit
  def edit
  end

  # POST /location_owners
  # POST /location_owners.json
  def create
    @location_owner = LocationOwner.new(location_owner_params)

    respond_to do |format|
      if @location_owner.save
        format.html { redirect_to @location_owner, notice: 'Location owner was successfully created.' }
        format.json { render :show, status: :created, location: @location_owner }
      else
        format.html { render :new }
        format.json { render json: @location_owner.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /location_owners/1
  # PATCH/PUT /location_owners/1.json
  def update
    respond_to do |format|
      if @location_owner.update(location_owner_params)
        format.html { redirect_to @location_owner, notice: 'Location owner was successfully updated.' }
        format.json { render :show, status: :ok, location: @location_owner }
      else
        format.html { render :edit }
        format.json { render json: @location_owner.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /location_owners/1
  # DELETE /location_owners/1.json
  def destroy
    @location_owner.destroy
    respond_to do |format|
      format.html { redirect_to location_owners_url, notice: 'Location owner was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_location_owner
      @location_owner = LocationOwner.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def location_owner_params
      params.require(:location_owner).permit(:name, :business_name, :document_number)
    end
end
