require 'test_helper'

class GestionRequerimientosControllerTest < ActionDispatch::IntegrationTest
  test "should get Registro_RQ" do
    get gestion_requerimientos_Registro_RQ_url
    assert_response :success
  end

  test "should get Seguimiento_RQ" do
    get gestion_requerimientos_Seguimiento_RQ_url
    assert_response :success
  end

  test "should get Actualizar_RQ" do
    get gestion_requerimientos_Actualizar_RQ_url
    assert_response :success
  end

end
