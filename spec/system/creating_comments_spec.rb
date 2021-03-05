require 'rails_helper'

RSpec.describe "CreatingComments", type: :system do
  before do
    driven_by(:rack_test)
  end

  it 'can navigate to first post' do
    visit '/posts/1'

  end

  it 'saves and displays created comment ' do

  end
end
