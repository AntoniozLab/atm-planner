require 'test_helper'

class RequirementStatesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @requirement_state = requirement_states(:one)
  end

  test "should get index" do
    get requirement_states_url
    assert_response :success
  end

  test "should get new" do
    get new_requirement_state_url
    assert_response :success
  end

  test "should create requirement_state" do
    assert_difference('RequirementState.count') do
      post requirement_states_url, params: { requirement_state: { name: @requirement_state.name } }
    end

    assert_redirected_to requirement_state_url(RequirementState.last)
  end

  test "should show requirement_state" do
    get requirement_state_url(@requirement_state)
    assert_response :success
  end

  test "should get edit" do
    get edit_requirement_state_url(@requirement_state)
    assert_response :success
  end

  test "should update requirement_state" do
    patch requirement_state_url(@requirement_state), params: { requirement_state: { name: @requirement_state.name } }
    assert_redirected_to requirement_state_url(@requirement_state)
  end

  test "should destroy requirement_state" do
    assert_difference('RequirementState.count', -1) do
      delete requirement_state_url(@requirement_state)
    end

    assert_redirected_to requirement_states_url
  end
end
