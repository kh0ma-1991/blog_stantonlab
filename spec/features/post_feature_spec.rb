require 'rails_helper'

RSpec.feature "PostFeature", type: :feature, js: true do
  before :each do
    Post.create(title: 'Post1', body: 'Body1')
    Post.create(title: 'Post2', body: 'Body2')
  end

  it 'all posts on home page' do
    visit root_path
    expect(page).to have_content 'Post1'
    expect(page).to have_content 'Post2'
    expect(page).to have_content 'Body1'
    expect(page).to have_content 'Body2'
  end

  it 'redirect to post' do
    visit root_path
    within('#post_id_1') do
      find_link('READ MORE').click
    end
    expect(page).to have_current_path '/posts/1'
  end
end
