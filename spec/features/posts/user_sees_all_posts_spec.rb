require 'rails_helper'

describe 'posts index' do
  context 'as a user' do
    before (:each) do
      @author = User.create(name: 'Dan', email: 'dan@dan.com', password_digest: '234')
      @post1 = @author.posts.create(title: 'post', body: 'stuff')
      @post2 = @author.posts.create(title: 'post2', body: 'stuff2')
    end

    it "should list all posts" do
      visit posts_path

      expect(current_path).to eq(posts_path)
      expect(page).to have_content(@post1.title)
      expect(page).to have_content(@post1.body)
      expect(page).to have_content(@post2.title)
      expect(page).to have_content(@post2.body)
    end
  end
end
