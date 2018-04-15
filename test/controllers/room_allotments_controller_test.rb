require 'test_helper'

class RoomAllotmentsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get room_allotments_index_url
    assert_response :success
  end

end
