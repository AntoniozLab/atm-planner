require 'test_helper'

class AtmModelsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @atm_model = atm_models(:one)
  end

  test "should get index" do
    get atm_models_url
    assert_response :success
  end

  test "should get new" do
    get new_atm_model_url
    assert_response :success
  end

  test "should create atm_model" do
    assert_difference('AtmModel.count') do
      post atm_models_url, params: { atm_model: { atm_brand_id: @atm_model.atm_brand_id, description: @atm_model.description, name: @atm_model.name } }
    end

    assert_redirected_to atm_model_url(AtmModel.last)
  end

  test "should show atm_model" do
    get atm_model_url(@atm_model)
    assert_response :success
  end

  test "should get edit" do
    get edit_atm_model_url(@atm_model)
    assert_response :success
  end

  test "should update atm_model" do
    patch atm_model_url(@atm_model), params: { atm_model: { atm_brand_id: @atm_model.atm_brand_id, description: @atm_model.description, name: @atm_model.name } }
    assert_redirected_to atm_model_url(@atm_model)
  end

  test "should destroy atm_model" do
    assert_difference('AtmModel.count', -1) do
      delete atm_model_url(@atm_model)
    end

    assert_redirected_to atm_models_url
  end
end
