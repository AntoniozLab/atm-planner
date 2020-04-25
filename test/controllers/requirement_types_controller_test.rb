require 'test_helper'

class RequirementTypesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @requirement_type = requirement_types(:one)
  end

  test "should get index" do
    get requirement_types_url
    assert_response :success
  end

  test "should get new" do
    get new_requirement_type_url
    assert_response :success
  end

  test "should create requirement_type" do
    assert_difference('RequirementType.count') do
      post requirement_types_url, params: { requirement_type: { description: @requirement_type.description, name: @requirement_type.name } }
    end

    assert_redirected_to requirement_type_url(RequirementType.last)
  end

  test "should show requirement_type" do
    get requirement_type_url(@requirement_type)
    assert_response :success
  end

  test "should get edit" do
    get edit_requirement_type_url(@requirement_type)
    assert_response :success
  end

  test "should update requirement_type" do
    patch requirement_type_url(@requirement_type), params: { requirement_type: { description: @requirement_type.description, name: @requirement_type.name } }
    assert_redirected_to requirement_type_url(@requirement_type)
  end

  test "should destroy requirement_type" do
    assert_difference('RequirementType.count', -1) do
      delete requirement_type_url(@requirement_type)
    end

    assert_redirected_to requirement_types_url
  end
end
