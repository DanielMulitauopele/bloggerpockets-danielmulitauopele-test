# frozen_string_literal: true

class PostsController < ApplicationController
  def index
    @posts = Post.published

    if params[:sort]
      @posts = @posts.switch_order(params[:sort])
    end

    respond_to :html
  end

  def show
    @post = Post.find(params[:id])
  end
end
