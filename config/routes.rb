Rails.application.routes.draw do
  resources :profiles
  resources :atms
  resources :atm_models
  resources :atm_types
  resources :atm_brands
  resources :atm_states
  resources :requirement_details
  resources :requirement_detail_reasons
  resources :requirement_detail_states
  resources :requirement_types
  resources :requirement_states
  resources :locations
  resources :requirements
  resources :location_contacts
  # resources :locations
  resources :location_owners
  resources :location_types
  resources :districts
  resources :provinces
  resources :departments
  resources :dashboard
  root 'home#index'
  # get 'dashboard/index'
  devise_for :users
  get 'home/index'
  get 'administracion_usuarios/crear_usuario'
  get 'administracion_usuarios/editar_usuario'
  get 'administracion_clientes/crear_cliente'
  get 'administracion_clientes/editar_cliente'
  get 'gestion_requerimientos/registro_rq'
  get 'gestion_requerimientos/seguimiento_rq'
  get 'gestion_requerimientos/actualizar_rq'
  get 'login/logueo'
  get 'login/recuperacion_psw'
  get 'login/recuperacion_psw_nuevo_psw'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

end
