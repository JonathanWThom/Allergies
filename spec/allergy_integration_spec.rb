require('capybara/rspec')
require('./app')
Capybara.app = Sinatra::Application
set(:show_exceptions, false)

describe('the allergy determination path', {:type => :feature}) do
  it('processes the user input to determine which allergies a person has') do
    visit('/')
    fill_in('score', :with => "32")
    click_button('Submit')
    expect(page).to have_content("chocolate ")
  end
end
