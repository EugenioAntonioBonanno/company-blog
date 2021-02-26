class PostsController < ApplicationController

  def index
    @posts = Post.all
    p @posts
    debugger
  end

  def new
  end

  def show
  end
end
