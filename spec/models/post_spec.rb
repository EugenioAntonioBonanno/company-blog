require 'rails_helper'

RSpec.describe Post, type: :model do

  # Example of necessary format "Post.create(post: { post: { title: post_params[:title], body: post_params[:body] } })"
  context 'validation tests' do
    it 'ensures title presence' do
      expect { Post.new(post: { post: { title: @valid_title } }).save }.to raise_error(ActiveResource::ForbiddenAccess)
    end

    it 'ensures body presence' do
      expect { Post.new(post: { post: { body: @valid_body } }).save }.to raise_error(ActiveResource::ForbiddenAccess)
    end

    it 'should save successfully' do
      post = Post.new(post: { post: { title: @valid_title, body: @valid_body } }).save
      expect(post).to eq(true)
    end
  end
end
