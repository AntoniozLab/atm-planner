require 'test_helper'

class RequirementDetailReasonsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @requirement_detail_reason = requirement_detail_reasons(:one)
  end

  test "should get index" do
    get requirement_detail_reasons_url
    assert_response :success
  end

  test "should get new" do
    get new_requirement_detail_reason_url
    assert_response :success
  end

  test "should create requirement_detail_reason" do
    assert_difference('RequirementDetailReason.count') do
      post requirement_detail_reasons_url, params: { requirement_detail_reason: { name: @requirement_detail_reason.name } }
    end

    assert_redirected_to requirement_detail_reason_url(RequirementDetailReason.last)
  end

  test "should show requirement_detail_reason" do
    get requirement_detail_reason_url(@requirement_detail_reason)
    assert_response :success
  end

  test "should get edit" do
    get edit_requirement_detail_reason_url(@requirement_detail_reason)
    assert_response :success
  end

  test "should update requirement_detail_reason" do
    patch requirement_detail_reason_url(@requirement_detail_reason), params: { requirement_detail_reason: { name: @requirement_detail_reason.name } }
    assert_redirected_to requirement_detail_reason_url(@requirement_detail_reason)
  end

  test "should destroy requirement_detail_reason" do
    assert_difference('RequirementDetailReason.count', -1) do
      delete requirement_detail_reason_url(@requirement_detail_reason)
    end

    assert_redirected_to requirement_detail_reasons_url
  end
end
