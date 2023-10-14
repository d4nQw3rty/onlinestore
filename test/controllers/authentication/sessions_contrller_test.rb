require "test_helper"

class Authentication::SessionsControllerTest < ActionDispatch::IntegrationTest
  def setup
    @user = users(:one)
  end
  test "should get new" do
    get new_session_url
    assert_response :success
  end

  test "should login a user by email" do
    post sessions_url, params: { user: { login: @user.email, password: 'testme' } }
    assert_redirected_to products_url
  end

  test "should login a user by username" do
    post sessions_url, params: { user: { login: @user.username, password: 'testme' } }
    assert_redirected_to products_url
  end
end
