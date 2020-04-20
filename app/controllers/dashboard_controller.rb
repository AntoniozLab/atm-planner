class DashboardController < ApplicationController

  # Verifica si esta logueado
  before_action :authenticate_user!

  def index
    @data = User.all
  end
end
