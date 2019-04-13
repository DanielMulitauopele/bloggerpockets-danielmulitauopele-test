require 'rails_helper'

describe 'user show' do
  context 'as a user' do
    before (:each) do
      @author = User.create!(name: 'Dan', email: 'dan@dan.com', password_digest: '234')
    end

    it "should list a single user" do
      visit user_path(@author)

      expect(current_path).to eq('/users/1')

      expect(page).to have_content(@author.name)
    end
  end
end
