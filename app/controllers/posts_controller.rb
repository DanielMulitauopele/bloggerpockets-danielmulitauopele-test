# frozen_string_literal: true

class PostsController < ApplicationController
  def index
    @posts = Post.published.includes(:user)
    @posts = @posts.switch_order(params[:sort]) if ['asc', 'desc'].include?(params[:sort])

    respond_to :html
  end

  def show
    @post = Post.find(params[:id])
  end
end
