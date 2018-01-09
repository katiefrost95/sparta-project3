require 'capybara/dsl'

class ApiLookup
  include Capybara::DSL

  SEARCH_ID="id_search"
  ID_BUTTON="id_button"
  ASTEROID_ID="asteroid_lookup_id"

  def visit_api_lookup_page
    visit('/lookup')
  end

  def click_search_engine
    find(:id, SEARCH_ID).click
  end

  def fill_in_id(id)
    fill_in(SEARCH_ID, with: id)
  end

  def click_id_submit_button
    find(:id, ID_BUTTON).click
  end

  def find_new_id
    find(:id, ASTEROID_ID).text
  end

end
