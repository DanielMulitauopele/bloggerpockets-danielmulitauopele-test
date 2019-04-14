require 'rails_helper'

describe Comment, type: :model do
  describe 'validations' do
    it {should validate_presence_of :body}
    it {should validate_presence_of :user_id}
    it {should validate_presence_of :post_id}
  end

  describe 'relationships' do
    it {should belong_to :post}
    it {should belong_to :user}
  end
end
