# frozen_string_literal: true

class Comment < ApplicationRecord
  belongs_to :user, :post

  scope :published, -> { where(published: true) }
end
