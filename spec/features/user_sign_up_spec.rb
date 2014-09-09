require 'rails_helper'

feature 'User signs up for free account' do 
  scenario 'Successfully' do 
    visit new_user_registration_path
    fill_in 'Email', with: 'admin@example.com'
    fill_in 'Password', with: 'helloworld'
    fill_in 'Password confirmation', with: 'helloworld'
    click_button 'Sign up'
    expect( page ).to have_content('A message with a confirmation link')
      expect( current_path ).to eq root_path
  end
end
