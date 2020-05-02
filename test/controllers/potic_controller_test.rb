require 'test_helper'

class PoticControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get potic_index_url
    assert_response :success
  end

end
