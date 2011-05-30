require 'test_helper'

class R10ControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
  end

end
