require 'rails_helper'

describe 'comments index' do
  context 'as a user' do
    before (:each) do
      @author = User.create!(name: 'Dan', email: 'dan@dan.com', password_digest: '234')
      @commenter = User.create!(name: 'Bill', email: 'bill@bill.com', password_digest: '134')
      @post1 = @author.posts.create!(title: 'post', body: 'stuff', published: true)
      @comment1 = @post1.comments.create!(body: 'boo this post', user_id: @commenter.id)
      @comment2 = @post1.comments.create!(body: 'yay this post', user_id: @commenter.id)
    end

    it "should list all comments" do
      visit post_path(@post1)

      expect(current_path).to eq('/posts/1')
      click_on 'View comments'

      expect(current_path).to eq('/posts/1/comments')
      expect(page).to have_content(@comment1.body)
      expect(page).to have_content(@comment2.body)
    end
  end
end
