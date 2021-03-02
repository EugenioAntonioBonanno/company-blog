require 'rails_helper'

RSpec.describe "CreatingBlogPosts", type: :system do
  before do
    driven_by(:rack_test)
  end

  before(:context) do
    @title = 'A blog title'
    @body = 'This is a bunch of stuff to create a body for a post'
  end

  it 'saves and displays created blog post' do
    visit '/posts/new'

    fill_in 'post[title]', with: @title
    fill_in 'post[body]', with: @body

    find('input[name="commit"]').click

    expect(page).to have_content(@title)
    expect(page).to have_content(@body)

    post = Post.ordered_posts.first
    expect(post.title).to eq(@title)
    expect(post.body).to eq(@body)
  end
end
