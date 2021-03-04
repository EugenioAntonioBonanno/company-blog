require 'rails_helper'

RSpec.describe "CreatingBlogPosts", type: :system do
  before do
    driven_by(:rack_test)
  end

  it 'can navigate to post/new' do
    visit root_path
    click_on('Create Post')
    expect(page).to have_content('Title')
  end

  it 'saves and displays created blog post' do
    visit '/posts/new'

    fill_in 'post[title]', with: @valid_title
    fill_in 'post[body]', with: @valid_body

    find('input[name="commit"]').click

    expect(page).to have_http_status(200)
    expect(page).to have_content(@valid_title)
    expect(page).to have_content(@valid_body)

    post = Post.ordered_posts.first
    expect(post.title).to eq(@valid_title)
    expect(post.body).to eq(@valid_body)
  end
end
