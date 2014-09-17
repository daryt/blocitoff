require 'rails_helper'

feature 'User signs up for free account' do 
  scenario 'Successfully' do 
    visit new_user_registration_path
    fill_in 'Name', with: 'Admin'
    fill_in 'Email', with: 'admin@example.com'
    fill_in 'Password', with: 'helloworld'
    fill_in 'Password confirmation', with: 'helloworld'
    click_button 'Sign up'
    expect( page ).to have_content('Welcome! You have signed up successfully.')
      expect( current_path ).to eq root_path
  end
end
