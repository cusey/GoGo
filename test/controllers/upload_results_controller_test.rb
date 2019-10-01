require 'test_helper'

class UploadResultsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @upload_result = upload_results(:one)
  end

  test "should get index" do
    get upload_results_url
    assert_response :success
  end

  test "should get new" do
    get new_upload_result_url
    assert_response :success
  end

  test "should create upload_result" do
    assert_difference('UploadResult.count') do
      post upload_results_url, params: { upload_result: { isValid: @upload_result.isValid, resourceId: @upload_result.resourceId, source: @upload_result.source, uploadId: @upload_result.uploadId } }
    end

    assert_redirected_to upload_result_url(UploadResult.last)
  end

  test "should show upload_result" do
    get upload_result_url(@upload_result)
    assert_response :success
  end

  test "should get edit" do
    get edit_upload_result_url(@upload_result)
    assert_response :success
  end

  test "should update upload_result" do
    patch upload_result_url(@upload_result), params: { upload_result: { isValid: @upload_result.isValid, resourceId: @upload_result.resourceId, source: @upload_result.source, uploadId: @upload_result.uploadId } }
    assert_redirected_to upload_result_url(@upload_result)
  end

  test "should destroy upload_result" do
    assert_difference('UploadResult.count', -1) do
      delete upload_result_url(@upload_result)
    end

    assert_redirected_to upload_results_url
  end
end
