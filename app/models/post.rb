# frozen_string_literal: true

class Post < ApplicationRecord
  belongs_to :user
  has_many :comments

  validates_presence_of :title, :body

  scope :published, -> { where(published: true) }

  def self.switch_order(params)
    order("created_at #{params}")
  end
end
