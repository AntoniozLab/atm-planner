require 'test_helper'

class RequirementsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @requirement = requirements(:one)
  end

  test "should get index" do
    get requirements_url
    assert_response :success
  end

  test "should get new" do
    get new_requirement_url
    assert_response :success
  end

  test "should create requirement" do
    assert_difference('Requirement.count') do
      post requirements_url, params: { requirement: { attachment_url: @requirement.attachment_url, completion_date: @requirement.completion_date, description: @requirement.description, location_id: @requirement.location_id, percentage_success: @requirement.percentage_success, request_date: @requirement.request_date, requirement_state_id: @requirement.requirement_state_id, user_assigned: @requirement.user_assigned, user_id: @requirement.user_id } }
    end

    assert_redirected_to requirement_url(Requirement.last)
  end

  test "should show requirement" do
    get requirement_url(@requirement)
    assert_response :success
  end

  test "should get edit" do
    get edit_requirement_url(@requirement)
    assert_response :success
  end

  test "should update requirement" do
    patch requirement_url(@requirement), params: { requirement: { attachment_url: @requirement.attachment_url, completion_date: @requirement.completion_date, description: @requirement.description, location_id: @requirement.location_id, percentage_success: @requirement.percentage_success, request_date: @requirement.request_date, requirement_state_id: @requirement.requirement_state_id, user_assigned: @requirement.user_assigned, user_id: @requirement.user_id } }
    assert_redirected_to requirement_url(@requirement)
  end

  test "should destroy requirement" do
    assert_difference('Requirement.count', -1) do
      delete requirement_url(@requirement)
    end

    assert_redirected_to requirements_url
  end
end
