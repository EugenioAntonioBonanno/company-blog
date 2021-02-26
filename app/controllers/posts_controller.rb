class PostsController < ApplicationController
  include HTTParty

  def index
    response = HTTParty.get('http://localhost:4000/posts')
    @posts = response.parsed_response['posts']
  end

  def new
  end

  def show
  end
end
