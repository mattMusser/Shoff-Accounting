require 'test_helper'

class SheetLinksControllerTest < ActionDispatch::IntegrationTest
  test "should get show" do
    get sheet_links_show_url
    assert_response :success
  end

  test "should get new" do
    get sheet_links_new_url
    assert_response :success
  end

  test "should get edit" do
    get sheet_links_edit_url
    assert_response :success
  end

  test "should get destroy" do
    get sheet_links_destroy_url
    assert_response :success
  end

end
