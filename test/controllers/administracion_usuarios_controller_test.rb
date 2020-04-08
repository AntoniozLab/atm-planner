require 'test_helper'

class AdministracionUsuariosControllerTest < ActionDispatch::IntegrationTest
  test "should get Crear_Usuario" do
    get administracion_usuarios_Crear_Usuario_url
    assert_response :success
  end

  test "should get Editar_Usuario" do
    get administracion_usuarios_Editar_Usuario_url
    assert_response :success
  end

end
