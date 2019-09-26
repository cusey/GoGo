require 'test_helper'

class RubyLanguageControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get ruby_language_index_url
    assert_response :success
  end

end
