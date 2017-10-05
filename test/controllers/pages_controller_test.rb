require 'test_helper'

class PagesControllerTest < ActionDispatch::IntegrationTest
  test "should get profiles" do
    get pages_profiles_url
    assert_response :success
  end

end
