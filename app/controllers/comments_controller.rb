# frozen_string_literal: true

class CommentsController < ApplicationController
  def index
    @post = Post.find(params[:post_id])

    respond_to :html
  end
end
