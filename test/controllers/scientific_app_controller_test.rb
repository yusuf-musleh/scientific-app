require "test_helper"

class ScientificAppControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get scientific_app_index_url
    assert_response :success
  end
end
