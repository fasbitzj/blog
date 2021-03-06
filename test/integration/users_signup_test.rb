require 'test_helper'

class UsersSignupTest < ActionDispatch::IntegrationTest
  # test "the truth" do
  #   assert true
  # end

  test "invalid signup information" do
    get signup_path
    assert_no_difference 'User.count' do
      post users_path,  params: { user: { name:  "",
                                          email: "user@invalid",
                                          password:              "foo",
                                          password_confirmation: "bar" } }
    end
    assert_template 'users/new'
  end

  test "valid signup infomation" do
    get signup_path
    assert_difference 'User.count' do
      post users_path, params:{user:{name:"test user",
                                     email: "testuser@gmail.com",
                                     password: "test123",
                                     password_confirmation: "test123"}}
    end
    follow_redirect!
    # assert_template "users/new"
    # assert_not flash.FILL_IN
    assert is_logged_in?
  end
end
