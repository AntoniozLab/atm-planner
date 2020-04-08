Rails.application.routes.draw do
  get 'home/index'
  get 'administracion_usuarios/Crear_Usuario'
  get 'administracion_usuarios/Editar_Usuario'
  get 'administracion_clientes/Crear_Cliente'
  get 'administracion_clientes/Editar_Cliente'
  get 'gestion_requerimientos/Registro_RQ'
  get 'gestion_requerimientos/Seguimiento_RQ'
  get 'gestion_requerimientos/Actualizar_RQ'
  get 'login/logueo'
  get 'login/recuperacion_psw'
  get 'login/recuperacion_psw_nuevo_psw'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

end
