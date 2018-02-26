require 'test_helper'

class WelcomeControllerTest < ActionDispatch::IntegrationTest
  test "should get faq" do
    get welcome_faq_url
    assert_response :success
  end

end
