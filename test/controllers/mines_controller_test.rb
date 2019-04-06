require 'test_helper'

class MinesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get mines_index_url
    assert_response :success
  end

end
