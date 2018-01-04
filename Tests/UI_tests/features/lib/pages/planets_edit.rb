require 'capybara/dsl'

class PlanetsEdit
  include Capybara::DSL

  EDIT_PLANET= "edit_planet"
  SAVE_BUTTON = "save_button"

  def click_edit_link
    find(:id, EDIT_PLANET).click
  end

  def enter_new_planet_title(title)
    fill_in('title', with: title)
  end

  def click_save_button
    find(:id, SAVE_BUTTON).click
  end

end
