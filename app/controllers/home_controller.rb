# Controlador de la págiona de bienvenida
class HomeController < ApplicationController

  layout "static"

  # Verifica si esta logueado (para pruebas)
  # before_action :authenticate_user!

  def index
  end
end
