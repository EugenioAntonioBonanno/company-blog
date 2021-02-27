require 'rails_helper'

RSpec.describe Post, type: :model do
  valid_post_title = 'Valid Title'
  valid_post_body = 'This is a write up for the post that should always be valid.'

  # Example of necessary format "Post.create(post: { post: { title: post_params[:title], body: post_params[:body] } })"
  context 'validation tests' do
    original_post_count = Post.all.length
    it 'ensures title presence' do
      Post.new(post: { post: { title: valid_post_title } }).save
      expect(original_post_count == Post.all.length).to eq(true)
    end

    it 'ensures body presence' do
      Post.new(post: { post: { body: valid_post_body } }).save
      expect(original_post_count == Post.all.length).to eq(true)
    end

    it 'should save successfully' do
      Post.new(post: { post: { title: valid_post_title, body: valid_post_body } }).save
      expect(original_post_count < Post.all.length).to eq(true)
    end
  end
end
