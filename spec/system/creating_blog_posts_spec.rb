require 'rails_helper'

RSpec.describe "CreatingBlogPosts", type: :system do
  before do
    driven_by(:rack_test)
  end

  it 'saves and displays created blog post' do
    visit '/posts/new'

    fill_in 'Title', with: 'A blog title'
    fill_in 'Body', with: 'This is a bunch of stuff to create a body'

    click_on 'Create Post'

    expect(page).to have_content('A blog title')
    expect(page).to have_content('This is a bunch of stuff to create a body')
  end
end
