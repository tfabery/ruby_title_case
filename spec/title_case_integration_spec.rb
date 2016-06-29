require('capybara/rspec')
require('./app')
Capybara.app = Sinatra::Application
set(:show_exceptions, false)

describe('the title case path',{:type => :feature}) do
  it("passes the user entry, returns title case") do
    visit('/')
    fill_in('title',:with => 'green eggs and ham')
    click_button('Send')
    expect(page).to have_content('Green Eggs and Ham')
  end
end
