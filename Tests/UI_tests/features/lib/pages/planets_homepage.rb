require 'capybara/dsl'

class PlanetsPage
  include Capybara::DSL

  PLANET_LINK = "planet_header"
  PLANET_DESCRIPTION ="description"
  NAV_PLANETS="nav_planets"
  NAV_ALLPLANETS="nav_allplanets"
  NAV_NEWPOST="nav_newpost"
  NAV_ASTEROIDS="nav_asteroids"
  NAV_FEED="nav_feed"
  NAV_LOOKUP="nav_lookup"
  NAV_BROWSE="nav_browse"

  def visit_planets_homepage
    visit('/planets')
  end

  def click_planet_header
    find(:id, PLANET_LINK).click
  end

  def find_planet_description
    find(:id, PLANET_DESCRIPTION)
  end

  def click_navbar_planets
    find(:id, NAV_PLANETS).click
  end

  def click_new_posts
    find(:id, NAV_NEWPOST).click
  end

  def visit_new_posts_page
    visit('/planets/new')
  end

  def click_navbar_asteroids
    find(:id, NAV_ASTEROIDS).click
  end

  def click_today_feed
    find(:id, NAV_FEED).click
  end

  def visit_today_page
    visit('/')
  end

  def click_lookup_link
    find(:id, NAV_LOOKUP).click
  end

  def visit_lookup_page
    visit("/lookup")
  end

  def click_browse_link
    find(:id, NAV_BROWSE).click
  end

  def visit_browse_page
    visit("/browse")
  end

end
