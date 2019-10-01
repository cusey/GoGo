require 'test_helper'

class UploadErrorsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @upload_error = upload_errors(:one)
  end

  test "should get index" do
    get upload_errors_url
    assert_response :success
  end

  test "should get new" do
    get new_upload_error_url
    assert_response :success
  end

  test "should create upload_error" do
    assert_difference('UploadError.count') do
      post upload_errors_url, params: { upload_error: { message: @upload_error.message, uploadResultId: @upload_error.uploadResultId } }
    end

    assert_redirected_to upload_error_url(UploadError.last)
  end

  test "should show upload_error" do
    get upload_error_url(@upload_error)
    assert_response :success
  end

  test "should get edit" do
    get edit_upload_error_url(@upload_error)
    assert_response :success
  end

  test "should update upload_error" do
    patch upload_error_url(@upload_error), params: { upload_error: { message: @upload_error.message, uploadResultId: @upload_error.uploadResultId } }
    assert_redirected_to upload_error_url(@upload_error)
  end

  test "should destroy upload_error" do
    assert_difference('UploadError.count', -1) do
      delete upload_error_url(@upload_error)
    end

    assert_redirected_to upload_errors_url
  end
end
