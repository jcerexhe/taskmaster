require 'test_helper'

class PagesControllerTest < ActionDispatch::IntegrationTest
  test "should get status" do
    get pages_status_url
    assert_response :success
  end

end
