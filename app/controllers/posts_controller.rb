class PostsController < ApplicationController

  def index
    @posts = Post.ordered_posts
  end

  def new
    @post = Post.new
  end

  def create
    # Sends a POST request to http://localhost:4000/posts
    # Create the following format on requests: { "post": {"title": params[post][title], "body": params[post][body] } }

    if Post.create(post: { post: { title: post_params[:title], body: post_params[:body] } })
      flash[:success] = 'Post created'
      redirect_to root_url
    else
      flash[:danger] = 'Unable to create post'
      render 'new'
    end
  end

  private

  def post_params
    params.require(:post).permit(:title, :body)
  end

  def get_comments

  end
end
