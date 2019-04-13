require 'rails_helper'

describe 'post show' do
  context 'as a user' do
    before (:each) do
      @author = User.create!(name: 'Dan', email: 'dan@dan.com', password_digest: '234')
      @post1 = @author.posts.create!(title: 'post', body: 'stuff', published: true)
    end

    it "should list single post" do
      visit post_path(@post1)

      expect(current_path).to eq('/posts/1')

      expect(page).to have_content(@post1.title)
      expect(page).to have_content(@post1.body)
    end
  end
end
