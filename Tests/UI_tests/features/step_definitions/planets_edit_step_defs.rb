Given("I am on the planet show page")do
  planets_page.visit_planets_homepage
  planets_page.click_planet_header
  planets_page.find_planet_description
  sleep 2
end

And("I click on the edit link") do
  planets_edit.click_edit_link
  sleep 2
end

When("I proceed to edit planet information") do
  planets_edit.enter_new_planet_title('edit')
  sleep 2
end

And("click save") do
  planets_edit.click_save_button
  sleep 2
end

Then("The new information will be saved") do
  planets_page.visit_planets_homepage
  sleep 2
end
