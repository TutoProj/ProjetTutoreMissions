require 'test_helper'

class UserSessionsControllerTest < ActionController::TestCase

  setup do
	UserSession.create(users(:one))
  end

  test "should get new" do
    get :new
    assert_response :success
  end

end
