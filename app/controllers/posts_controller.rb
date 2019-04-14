# frozen_string_literal: true

class PostsController < ApplicationController
  def index
    @posts = Post.published
    @posts = @posts.switch_order(params[:sort]) if params[:sort]

    respond_to :html
  end

  def show
    @post = Post.find(params[:id])
  end
end
