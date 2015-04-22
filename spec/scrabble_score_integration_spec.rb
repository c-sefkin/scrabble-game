require('capybara/rspec')
require('./app')
Capybara.app = Sinatra::Application

describe('the scrabble score path', {:type => :feature}) do
  it('processes the user entry and returns the scrabble score') do
    visit('/')
    fill_in('title', :with => 'awesome')
    click_button('Send')
    expect(page).to have_content(12)
  end
end
