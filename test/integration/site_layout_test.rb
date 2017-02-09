require 'test_helper'

class SiteLayoutTest < ActionDispatch::IntegrationTest
  test 'layout links as a logged out user' do
    get root_path
    assert_template 'static_pages/home'
    assert_select 'a[href=?]', root_path, count: 2
    assert_select 'a[href=?]', help_path
    assert_select 'a[href=?]', about_path
    assert_select 'a[href=?]', contact_path
    get contact_path
    assert_select 'title', full_title('Contact')
    get signup_path
    assert_select 'title', full_title('Sign up')
  end

  test 'layout links as a logged in user' do
    @user = users(:michael)
    log_in_as(@user)
    get root_path
    assert_template 'static_pages/home'
    assert_select 'a[href=?]', root_path, count: 2
    assert_select 'a[href=?]', users_path
    assert_select 'a[href=?]', user_path(@user)
    assert_select 'a[href=?]', edit_user_path(@user)
    assert_select 'a[href=?]', logout_path
    get users_path
    assert_select 'title', full_title('All users')
    get user_path(@user)
    assert_select 'title', full_title("#{@user.name}")
    get edit_user_path(@user.id)
    assert_select 'title', full_title('Edit user')

    # We still want these to show up after we log in,
    # so let's make sure they don't disappear for some
    # reason. Even though we last nav'd to the edit_user_path,
    # these should still exist.
    assert_select 'a[href=?]', help_path
    assert_select 'a[href=?]', about_path
    assert_select 'a[href=?]', contact_path
  end
end
