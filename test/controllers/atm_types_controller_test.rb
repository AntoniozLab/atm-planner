require 'test_helper'

class AtmTypesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @atm_type = atm_types(:one)
  end

  test "should get index" do
    get atm_types_url
    assert_response :success
  end

  test "should get new" do
    get new_atm_type_url
    assert_response :success
  end

  test "should create atm_type" do
    assert_difference('AtmType.count') do
      post atm_types_url, params: { atm_type: { ATM_id: @atm_type.ATM_id, description: @atm_type.description, name: @atm_type.name } }
    end

    assert_redirected_to atm_type_url(AtmType.last)
  end

  test "should show atm_type" do
    get atm_type_url(@atm_type)
    assert_response :success
  end

  test "should get edit" do
    get edit_atm_type_url(@atm_type)
    assert_response :success
  end

  test "should update atm_type" do
    patch atm_type_url(@atm_type), params: { atm_type: { ATM_id: @atm_type.ATM_id, description: @atm_type.description, name: @atm_type.name } }
    assert_redirected_to atm_type_url(@atm_type)
  end

  test "should destroy atm_type" do
    assert_difference('AtmType.count', -1) do
      delete atm_type_url(@atm_type)
    end

    assert_redirected_to atm_types_url
  end
end
