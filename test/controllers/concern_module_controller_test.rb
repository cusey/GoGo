require 'test_helper'

class ConcernModuleControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get concern_module_index_url
    assert_response :success
  end

end
