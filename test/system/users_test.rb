require "application_system_test_case"

class UsersTest < ApplicationSystemTestCase
  # test "visiting the index" do
  #   visit users_url
  #
  #   assert_selector "h1", text: "User"
  # end


   test "lets a signed in user create a new product" do
    login_as users(:frank)
    visit "/user/edit"
    # save_and_open_screenshot

    fill_in "emerency_contact_name", with: "Henk"
    fill_in "emerency_contact_number", with: "0641394702"
    # save_and_open_screenshot

    click_on 'Save information'
    # save_and_open_screenshot

    # Should be redirected to Home with new product
    assert_equal root_path, page.current_path
end
