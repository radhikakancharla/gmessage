require 'rails_helper'

RSpec.feature "Users", type: :feature do
  context 'authenticated' do
    before(:each) do
      visit '/users/sign_in'
      fill_in 'user[email]', with: 'bob@aol.com'
      fill_in 'user[password]', with: 'radhika123'
      click_button 'Log in'
    end

    scenario 'change color and photo' do
      visit '/users/edit'
      fill_in 'user[color]', with: '#9417c6'
      fill_in 'user[photo]', with: 'https://static.pexels.com/photos/207962/pexels-photo-207962.jpeg'
      fill_in 'user[current_password]', with: 'radhika123'
      click_button 'Update'
      visit '/users/edit'
      expect(find_field('user[color]').value).to eql('#9417c6')
      expect(find_field('user[photo]').value).to eql('https://static.pexels.com/photos/207962/pexels-photo-207962.jpeg')
    end
  end
end
