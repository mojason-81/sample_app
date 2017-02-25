require 'test_helper'

class UserShowTest < ActionDispatch::IntegrationTest
  test 'should redirect to root_url when user is not activated' do
    get signup_path
    assert_difference 'User.count', 1 do
      post users_path, params: { user: { name: 'Example User',
                                        email: 'user@example.com',
                                        password: 'password',
                                        password_confirmation: 'password' } }
    end
    assert_equal 1, ActionMailer::Base.deliveries.size
    user = assigns(:user)
    assert_not user.activated?
    log_in_as users(:michael)
    get user_path(user)
    assert_redirected_to root_url
  end
end
