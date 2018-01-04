require 'capybara/dsl'

class ApiFeed
  include Capybara::DSL

  FEED_REFRESH_BUTTON="feed_refresh_button"
  ASTEROID_NAME="asteroid_feed_name"

  def visit_api_feed_page
    visit("/")
  end

  def click_refresh_button
    find(:id, FEED_REFRESH_BUTTON).click
  end

  def find_new_feed_name
    find(:id, ASTEROID_NAME).text
  end


end
