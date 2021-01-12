require 'rails_helper'

RSpec.feature "User Logins", type: :feature, js: true do
  before :each do
    @user = User.create!(
      first_name: 'jared',
      last_name: 'flo',
      email: 'jared@gmail.com',
      password: 'password',
      password_confirmation: 'password'
    )
  end

  scenario 'Logs in' do
    visit root_path
    click_link 'Login'
    expect(page).to have_text('Email:')
    fill_in 'Email', with: 'jared@gmail.com'
    fill_in 'Password', with: 'password'
    click_button 'Submit'
    save_screenshot('login.png')
    expect(page).to have_text(/signed in as jared/i)
    expect(page).to have_text(/logout/i)
  end

end
