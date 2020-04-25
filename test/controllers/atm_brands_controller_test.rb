require 'test_helper'

class AtmBrandsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @atm_brand = atm_brands(:one)
  end

  test "should get index" do
    get atm_brands_url
    assert_response :success
  end

  test "should get new" do
    get new_atm_brand_url
    assert_response :success
  end

  test "should create atm_brand" do
    assert_difference('AtmBrand.count') do
      post atm_brands_url, params: { atm_brand: { atm_models_id: @atm_brand.atm_models_id, description: @atm_brand.description, name: @atm_brand.name } }
    end

    assert_redirected_to atm_brand_url(AtmBrand.last)
  end

  test "should show atm_brand" do
    get atm_brand_url(@atm_brand)
    assert_response :success
  end

  test "should get edit" do
    get edit_atm_brand_url(@atm_brand)
    assert_response :success
  end

  test "should update atm_brand" do
    patch atm_brand_url(@atm_brand), params: { atm_brand: { atm_models_id: @atm_brand.atm_models_id, description: @atm_brand.description, name: @atm_brand.name } }
    assert_redirected_to atm_brand_url(@atm_brand)
  end

  test "should destroy atm_brand" do
    assert_difference('AtmBrand.count', -1) do
      delete atm_brand_url(@atm_brand)
    end

    assert_redirected_to atm_brands_url
  end
end
