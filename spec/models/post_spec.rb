require 'rails_helper'

RSpec.describe Post, type: :model do
  valid_post_title = 'Valid Title'
  valid_post_body = 'This is a write up for the post that should always be valid.'

  # Example of necessary format "Post.create(post: { post: { title: post_params[:title], body: post_params[:body] } })"
  context 'validation tests' do
    it 'ensures title presence' do
      post = Post.new(post: { post: { title: valid_post_title } }).valid?
      expect(post).to eq(false)
    end

    it 'ensures body presence' do
      post = Post.new(post: { post: { body: valid_post_body } }).valid?
      expect(post).to eq(false)
    end

    it 'should save succesfully' do
      post = Post.new(post: { post: { title: valid_post_title, body: valid_post_body } }).save
      expect(post).to eq(true)
    end
  end
end
