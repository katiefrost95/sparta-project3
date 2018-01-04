require 'capybara/dsl'

class PlanetsPage
  include Capybara::DSL

  PLANET_LINK = "planet_header"
  PLANET_DESCRIPTION ="description"

  def visit_planets_homepage
    visit('/planets')
  end

  def click_planet_header
    find(:id, PLANET_LINK).click
  end

  def find_planet_description
    find(:id, PLANET_DESCRIPTION)
  end

end
