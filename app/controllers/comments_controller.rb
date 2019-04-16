# frozen_string_literal: true

class CommentsController < ApplicationController
  def index
    @post = Post.includes(:comments, :user).find(params[:post_id])

    respond_to :html
  end
end
