require 'test_helper'

class RequirementDetailsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @requirement_detail = requirement_details(:one)
  end

  test "should get index" do
    get requirement_details_url
    assert_response :success
  end

  test "should get new" do
    get new_requirement_detail_url
    assert_response :success
  end

  test "should create requirement_detail" do
    assert_difference('RequirementDetail.count') do
      post requirement_details_url, params: { requirement_detail: { atm_new: @requirement_detail.atm_new, atm_old: @requirement_detail.atm_old, cancel_observation: @requirement_detail.cancel_observation, description: @requirement_detail.description, end_date: @requirement_detail.end_date, requirement_detail_reason_id: @requirement_detail.requirement_detail_reason_id, requirement_detail_state_id: @requirement_detail.requirement_detail_state_id, requirement_id: @requirement_detail.requirement_id, requirement_type_id: @requirement_detail.requirement_type_id, start_date: @requirement_detail.start_date } }
    end

    assert_redirected_to requirement_detail_url(RequirementDetail.last)
  end

  test "should show requirement_detail" do
    get requirement_detail_url(@requirement_detail)
    assert_response :success
  end

  test "should get edit" do
    get edit_requirement_detail_url(@requirement_detail)
    assert_response :success
  end

  test "should update requirement_detail" do
    patch requirement_detail_url(@requirement_detail), params: { requirement_detail: { atm_new: @requirement_detail.atm_new, atm_old: @requirement_detail.atm_old, cancel_observation: @requirement_detail.cancel_observation, description: @requirement_detail.description, end_date: @requirement_detail.end_date, requirement_detail_reason_id: @requirement_detail.requirement_detail_reason_id, requirement_detail_state_id: @requirement_detail.requirement_detail_state_id, requirement_id: @requirement_detail.requirement_id, requirement_type_id: @requirement_detail.requirement_type_id, start_date: @requirement_detail.start_date } }
    assert_redirected_to requirement_detail_url(@requirement_detail)
  end

  test "should destroy requirement_detail" do
    assert_difference('RequirementDetail.count', -1) do
      delete requirement_detail_url(@requirement_detail)
    end

    assert_redirected_to requirement_details_url
  end
end
