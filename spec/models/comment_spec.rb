require 'rails_helper'

RSpec.describe Comment, type: :model do
  before(:each) do
    @comment = Comment.new
    @comment.prefix_options[:post_id] = 1
  end

  context 'validation tests' do
    it 'ensures body presence' do
      @comment.name = 'Gino'
      @comment.body = ''
      expect { @comment.save }.to raise_error(ActiveResource::ForbiddenAccess)
    end

    it 'ensures name presence' do
      @comment.name = ''
      @comment.body = 'this is a comment'
      expect { @comment.save }.to raise_error(ActiveResource::ForbiddenAccess)
    end

    it 'should save successfully' do
      @comment.name = 'Gino'
      @comment.body = 'this is a comment'
      response = @comment.save
      expect(response).to eq(true)
    end
  end
end
