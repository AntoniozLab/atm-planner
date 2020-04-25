require 'test_helper'

class AtmStatesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @atm_state = atm_states(:one)
  end

  test "should get index" do
    get atm_states_url
    assert_response :success
  end

  test "should get new" do
    get new_atm_state_url
    assert_response :success
  end

  test "should create atm_state" do
    assert_difference('AtmState.count') do
      post atm_states_url, params: { atm_state: { ATM_id: @atm_state.ATM_id, name: @atm_state.name } }
    end

    assert_redirected_to atm_state_url(AtmState.last)
  end

  test "should show atm_state" do
    get atm_state_url(@atm_state)
    assert_response :success
  end

  test "should get edit" do
    get edit_atm_state_url(@atm_state)
    assert_response :success
  end

  test "should update atm_state" do
    patch atm_state_url(@atm_state), params: { atm_state: { ATM_id: @atm_state.ATM_id, name: @atm_state.name } }
    assert_redirected_to atm_state_url(@atm_state)
  end

  test "should destroy atm_state" do
    assert_difference('AtmState.count', -1) do
      delete atm_state_url(@atm_state)
    end

    assert_redirected_to atm_states_url
  end
end
