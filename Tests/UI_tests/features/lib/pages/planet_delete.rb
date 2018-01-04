require 'capybara/dsl'

class PlanetsDelete
  include Capybara::DSL

  DELETE_PLANET="delete_planet"

  def click_new_planet(planet)
    find_link(planet).click
  end

  def click_delete
    find(:id, DELETE_PLANET).click
  end

end
