class LocationContactsController < ApplicationController
  before_action :set_location_contact, only: [:show, :edit, :update, :destroy]

  # GET /location_contacts
  # GET /location_contacts.json
  def index
    @location_contacts = LocationContact.all
  end

  # GET /location_contacts/1
  # GET /location_contacts/1.json
  def show
  end

  # GET /location_contacts/new
  def new
    @location_contact = LocationContact.new
  end

  # GET /location_contacts/1/edit
  def edit
  end

  # POST /location_contacts
  # POST /location_contacts.json
  def create
    @location_contact = LocationContact.new(location_contact_params)

    respond_to do |format|
      if @location_contact.save
        format.html { redirect_to @location_contact, notice: 'Location contact was successfully created.' }
        format.json { render :show, status: :created, location: @location_contact }
      else
        format.html { render :new }
        format.json { render json: @location_contact.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /location_contacts/1
  # PATCH/PUT /location_contacts/1.json
  def update
    respond_to do |format|
      if @location_contact.update(location_contact_params)
        format.html { redirect_to @location_contact, notice: 'Location contact was successfully updated.' }
        format.json { render :show, status: :ok, location: @location_contact }
      else
        format.html { render :edit }
        format.json { render json: @location_contact.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /location_contacts/1
  # DELETE /location_contacts/1.json
  def destroy
    @location_contact.destroy
    respond_to do |format|
      format.html { redirect_to location_contacts_url, notice: 'Location contact was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_location_contact
      @location_contact = LocationContact.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def location_contact_params
      params.require(:location_contact).permit(:first_name, :last_name, :phone, :email, :position_name, :location_id)
    end
end
