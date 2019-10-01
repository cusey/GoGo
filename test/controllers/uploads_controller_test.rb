require 'test_helper'

class UploadsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @upload = uploads(:one)
  end

  test "should get index" do
    get uploads_url
    assert_response :success
  end

  test "should get new" do
    get new_upload_url
    assert_response :success
  end

  test "should create upload" do
    assert_difference('Upload.count') do
      post uploads_url, params: { upload: { attachmentContentType: @upload.attachmentContentType, attachmentFileName: @upload.attachmentFileName, attachmentFileSize: @upload.attachmentFileSize, attachmentUpdatedAt: @upload.attachmentUpdatedAt, autoProcess: @upload.autoProcess, contactId: @upload.contactId, organizationId: @upload.organizationId, processedAt: @upload.processedAt, status: @upload.status, totalRecords: @upload.totalRecords, type: @upload.type, uploaderContactId: @upload.uploaderContactId } }
    end

    assert_redirected_to upload_url(Upload.last)
  end

  test "should show upload" do
    get upload_url(@upload)
    assert_response :success
  end

  test "should get edit" do
    get edit_upload_url(@upload)
    assert_response :success
  end

  test "should update upload" do
    patch upload_url(@upload), params: { upload: { attachmentContentType: @upload.attachmentContentType, attachmentFileName: @upload.attachmentFileName, attachmentFileSize: @upload.attachmentFileSize, attachmentUpdatedAt: @upload.attachmentUpdatedAt, autoProcess: @upload.autoProcess, contactId: @upload.contactId, organizationId: @upload.organizationId, processedAt: @upload.processedAt, status: @upload.status, totalRecords: @upload.totalRecords, type: @upload.type, uploaderContactId: @upload.uploaderContactId } }
    assert_redirected_to upload_url(@upload)
  end

  test "should destroy upload" do
    assert_difference('Upload.count', -1) do
      delete upload_url(@upload)
    end

    assert_redirected_to uploads_url
  end
end
