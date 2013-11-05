require "spec_helper"


describe "Signs in user" do
  it "should sign in a confirmed user using the main signin page", :js => true do
    password = "mypassword11"
    user = create(:confirmed_user, password: password)

    #expect(User.confirm_by_token(user.confirmation_token)).to be_true

    expect(user.valid_password?(password)).to be_true
    expect(user).to be_confirmed
    expect(user).to be_persisted

    visit new_user_session_path

    page.save_screenshot("spec/screenshots/1.png")

    fill_in("Email address", with: user.email)
    fill_in("Password", with: password)

    page.save_screenshot("spec/screenshots/2.png")

    click_on "Sign in"

    page.save_screenshot("spec/screenshots/3.png")


    expect(User.count).to be > 0
    expect(page).to have_content user.full_name



  end

end
