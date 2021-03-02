require 'rails_helper'

RSpec.describe "CreatingBlogPosts", type: :system do
  before do
    driven_by(:rack_test)
  end

  it 'saves and displays created blog post' do
    visit '/posts/new'

    fill_in 'post[title]', with: 'A blog title'
    fill_in 'post[body]', with: 'This is a bunch of stuff to create a body for a post'

    find('input[name="commit"]').click

    expect(page).to have_content('A blog title')
    expect(page).to have_content('This is a bunch of stuff to create a body')

    post = Post.all
  end
end
