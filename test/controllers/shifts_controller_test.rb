require 'test_helper'

class ShiftsControllerTest < ActionDispatch::IntegrationTest
  test "should get show" do
    get shifts_show_url
    assert_response :success
  end

end
