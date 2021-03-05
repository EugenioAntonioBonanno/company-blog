require 'rails_helper'

RSpec.describe "CreatingComments", type: :system do
  before do
    driven_by(:rack_test)
  end

  it 'can navigate to post page to create comment' do
    visit '/posts/1'
    expect(page).to have_selector('#comment-title')
    expect(page).to have_selector('#comment-body')
    expect(page).to have_selector('input[type=submit]')

  end
end
