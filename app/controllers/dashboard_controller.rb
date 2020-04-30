class DashboardController < ApplicationController
  # Verifica si esta logueado
  before_action :authenticate_user!

  def index
  	@dateLastMonth = Date.today - 1.months
    # @requerimentCreates = Requirement.where("request_date > '@dateLastMonth'").count
    @requerimentCreates = Requirement.count
    @requerimentPendings = Requirement.where("requirement_state_id = 1").count
    @atmsDisponible = Atm.where("atm_state_id = 2").count
    @atmsInstalados = Atm.where("atm_state_id = 1").count

    @users = User.all;
    # @requirements = Requirement.includes(:requirement_states)
  end
end
