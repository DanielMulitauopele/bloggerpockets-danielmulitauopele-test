# frozen_string_literal: true

class Comment < ApplicationRecord
  belongs_to :user
  belongs_to :post

  validates_presence_of :body, :user_id, "post_id"

  scope :published, -> { where(published: true) }
end
