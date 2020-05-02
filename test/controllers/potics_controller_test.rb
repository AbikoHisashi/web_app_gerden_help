require 'test_helper'

class PoticsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get potics_index_url
    assert_response :success
  end

end
