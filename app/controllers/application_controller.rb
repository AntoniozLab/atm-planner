class ApplicationController < ActionController::Base

  before_action :configure_permitted_parameters, if: :devise_controller?

  protected

  # Pruebas de redirección de layotus
  def choose_layout
    if devise_controller?
      'landing'
    else
      'application'
    end
  end

  # Página de destino al iniciar sesión
  def after_sign_in_path_for(resource)
    # return the path based on resource
    dashboard_index_path
  end

  # Página de destino luego de cerrar sesión
  def after_sign_out_path_for(resource)
    # return the path based on resource
    new_user_session_path
  end

  def configure_permitted_parameters

    devise_parameter_sanitizer.permit(:sign_up, keys: [:name, :last_name])
    # devise_parameter_sanitizer.for(:sign_up) { |u| u.permit(:name, :last_name, :email, :password) }
    # devise_parameter_sanitizer.for(:account_update) { |u| u.permit(:name, :last_name, :email, :password, :current_password) }
  end
end
