require 'test_helper'

class TitleControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get title_index_url
    assert_response :success
  end

  test "should get new" do
    get title_new_url
    assert_response :success
  end

  test "should get show" do
    get title_show_url
    assert_response :success
  end

  test "should get destroy" do
    get title_destroy_url
    assert_response :success
  end

end
