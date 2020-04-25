require 'test_helper'

class RequirementDetailStatesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @requirement_detail_state = requirement_detail_states(:one)
  end

  test "should get index" do
    get requirement_detail_states_url
    assert_response :success
  end

  test "should get new" do
    get new_requirement_detail_state_url
    assert_response :success
  end

  test "should create requirement_detail_state" do
    assert_difference('RequirementDetailState.count') do
      post requirement_detail_states_url, params: { requirement_detail_state: { name: @requirement_detail_state.name } }
    end

    assert_redirected_to requirement_detail_state_url(RequirementDetailState.last)
  end

  test "should show requirement_detail_state" do
    get requirement_detail_state_url(@requirement_detail_state)
    assert_response :success
  end

  test "should get edit" do
    get edit_requirement_detail_state_url(@requirement_detail_state)
    assert_response :success
  end

  test "should update requirement_detail_state" do
    patch requirement_detail_state_url(@requirement_detail_state), params: { requirement_detail_state: { name: @requirement_detail_state.name } }
    assert_redirected_to requirement_detail_state_url(@requirement_detail_state)
  end

  test "should destroy requirement_detail_state" do
    assert_difference('RequirementDetailState.count', -1) do
      delete requirement_detail_state_url(@requirement_detail_state)
    end

    assert_redirected_to requirement_detail_states_url
  end
end
