class DashboardController < ApplicationController
  # Verifica si esta logueado
  before_action :authenticate_user!

  def index
  	@dateLastMonth = Date.today - 1.months
    @requerimentCreates = Requirement.where("request_date > '@dateLastMonth'").count
    @requerimentPendings = Requirement.where("request_date > '@dateLastMonth'").where("requirement_state_id = 1").count
    @atmsDisponible = Atm.where("atm_state_id = 1").count
    @atmsInstalados = Atm.where("atm_state_id = 2").count
  end
end
