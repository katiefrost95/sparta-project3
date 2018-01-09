require 'capybara/dsl'

class PlanetsNew
  include Capybara::DSL

  TITLE="form_title"
  IMAGE="image_url"
  BODY="form_body"
  MOONS="form_moons"
  MISSIONS="form_missions"
  SAVE_BUTTON="save_button"

  def visit_new_posts
    visit("/planets/new")
  end

  def fill_in_title(title)
    fill_in(TITLE, with: title)
  end

  def fill_in_image(url)
    fill_in(IMAGE, with: url)
  end

  def fill_in_body(text)
    fill_in(BODY, with: text)
  end

  def fill_in_moons(text)
    fill_in(MOONS, with: text)
  end

  def fill_in_missions(text)
    fill_in(MISSIONS, with: text)
  end

  def click_save_button
    find(:id, SAVE_BUTTON).click
  end

  def find_new_planet(planet)
    find_link(planet).visible?
  end

end
