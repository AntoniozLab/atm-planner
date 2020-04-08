require 'test_helper'

class AdministracionClientesControllerTest < ActionDispatch::IntegrationTest
  test "should get Crear_Cliente" do
    get administracion_clientes_Crear_Cliente_url
    assert_response :success
  end

  test "should get Editar_Cliente" do
    get administracion_clientes_Editar_Cliente_url
    assert_response :success
  end

end
