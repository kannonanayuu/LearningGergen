require 'test_helper'

class CommunicationsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get communications_index_url
    assert_response :success
  end

  test "should get new" do
    get communications_new_url
    assert_response :success
  end

end
