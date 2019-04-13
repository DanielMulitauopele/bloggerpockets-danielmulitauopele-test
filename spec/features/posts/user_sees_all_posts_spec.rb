require 'rails_helper'

describe 'posts index' do
  context 'as a user' do
    before (:each) do
      @author = User.create!(name: 'Dan', email: 'dan@dan.com', password_digest: '234')
      @post1 = @author.posts.create!(title: 'post', body: 'stuff', published: true)
      @post2 = @author.posts.create!(title: 'post2', body: 'stuff2', published: true)
      @post3 = @author.posts.create!(title: 'post3', body: 'stuff3')
    end

    it "should list all posts" do
      visit posts_path

      expect(current_path).to eq(posts_path)

      expect(page).to have_content(@post1.title)
      expect(page).to have_content(@post1.body)
      expect(page).to have_content(@post2.title)
      expect(page).to have_content(@post2.body)
    end
    it "should not list posts that are not published" do
      visit posts_path

      expect(current_path).to eq(posts_path)

      expect(page).to_not have_content(@post3.title)
      expect(page).to_not have_content(@post3.body)
    end
  end
end
