require 'test_helper'

class CommunicationControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get communication_index_url
    assert_response :success
  end

  test "should get new" do
    get communication_new_url
    assert_response :success
  end

end
