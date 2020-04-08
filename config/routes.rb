Rails.application.routes.draw do
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
