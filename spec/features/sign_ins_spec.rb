require 'rails_helper'

RSpec.feature 'SignIns', type: :feature, js: true do
  before :each do
    Admin::User.create(email: 'user@example.com', password: 'password')
  end

  it 'signs me in' do
    visit '/admin'
    within('#new_admin_user') do
      fill_in 'Email', with: 'user@example.com'
      fill_in 'Password', with: 'password'
    end
    click_button 'Log in'
    expect(page).to have_content 'Signed in successfully.'
  end
end
