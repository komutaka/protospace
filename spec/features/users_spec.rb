require 'rails_helper'

feature 'User management' do
  scenario "adds a new user" do

    visit root_path
    expect{
      click_link 'Get Started'
      click_link 'Sign up now'
      fill_in 'Nickname', with: 'muranaga'
      fill_in 'E-Mail', with: 'newuser@example.com'
      fill_in 'Password', with: 'secret123'
      fill_in 'Member', with: 'muranaga'
      fill_in 'Profile', with: 'muranaga'
      fill_in 'work', with: 'muranaga'
      click_button '登録する'
    }.to change(User, :count).by(1)
    expect(current_path).to eq root_path
    expect(page).to have_content 'ようこそ！アカウント登録を受け付けました。 muranaga My Page Profile Edit Logout New Proto Popular PROTO Newest PROTO View Tags © PROTO SPACE 2015.'
    within '.btn.btn-primary.navbar-btn a' do
      expect(page).to have_content 'New Proto'
    end
  end

  scenario "a user login" do
    visit root_path
    expect{
      click_link 'Get Started'
      fill_in 'Email address', with: 'komukomu@gmail.com'
      fill_in 'Password', with: 'komukomu'
      click_button 'SIGN IN'
    }
    expect(current_path).to eq root_path
  end
end

