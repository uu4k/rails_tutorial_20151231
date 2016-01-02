require 'test_helper'

class UsersIndexTest < ActionDispatch::IntegrationTest

  def setup
    @user = users(:archer)
    @non_activated = users(:mallory)
  end

  test "show activated user" do
    get user_path(@user)
    assert_template 'users/show'
  end

  test "show non activated user" do
    get user_path(@non_activated)
    assert_redirected_to root_url
  end
end