require 'test_helper'

class ExcelUploadsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get excel_uploads_index_url
    assert_response :success
  end

end
