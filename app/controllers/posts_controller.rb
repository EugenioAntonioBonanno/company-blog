class PostsController < ApplicationController
  require 'json'

  def index
    @posts = Post.all
  end

  def new
    @post = Post.new
  end

  def create
    # sends a POST request to http://localhost:4000/posts
    # In the following format: { "post": {"title": params[post][title],"body": params[post][body] }}

    if Post.create(post: { post: { title: post_params[:title], body: post_params[:body] } })
      flash[:success] = 'Post created'
    else
      flash[:danger] = 'Unable to create post'
    end

    redirect_to root_url
  end

  def show
  end

  private

  def post_params
    params.require(:post).permit(:title, :body)
  end
end
