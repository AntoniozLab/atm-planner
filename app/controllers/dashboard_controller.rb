class DashboardController < ApplicationController
  # Verifica si esta logueado
  before_action :authenticate_user!

  def index
    @users = User.all
  end
end
