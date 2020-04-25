require 'test_helper'

class AtmsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @atm = atms(:one)
  end

  test "should get index" do
    get atms_url
    assert_response :success
  end

  test "should get new" do
    get new_atm_url
    assert_response :success
  end

  test "should create atm" do
    assert_difference('Atm.count') do
      post atms_url, params: { atm: { atm_model_id: @atm.atm_model_id, atm_state_id: @atm.atm_state_id, atm_type_id: @atm.atm_type_id, description: @atm.description, manufactoring_date: @atm.manufactoring_date, serial_number: @atm.serial_number } }
    end

    assert_redirected_to atm_url(Atm.last)
  end

  test "should show atm" do
    get atm_url(@atm)
    assert_response :success
  end

  test "should get edit" do
    get edit_atm_url(@atm)
    assert_response :success
  end

  test "should update atm" do
    patch atm_url(@atm), params: { atm: { atm_model_id: @atm.atm_model_id, atm_state_id: @atm.atm_state_id, atm_type_id: @atm.atm_type_id, description: @atm.description, manufactoring_date: @atm.manufactoring_date, serial_number: @atm.serial_number } }
    assert_redirected_to atm_url(@atm)
  end

  test "should destroy atm" do
    assert_difference('Atm.count', -1) do
      delete atm_url(@atm)
    end

    assert_redirected_to atms_url
  end
end
