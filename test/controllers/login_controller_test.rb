require 'test_helper'

class LoginControllerTest < ActionDispatch::IntegrationTest
  test "should get logueo" do
    get login_logueo_url
    assert_response :success
  end

  test "should get recuperacion_psw" do
    get login_recuperacion_psw_url
    assert_response :success
  end

end
