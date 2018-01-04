Given("I am on the planet homepage") do
  planets_page.visit_planets_homepage
end

When("I click on a planet link") do
  planets_page.click_planet_header
end

Then("I will be taken to that planet's show page") do
  planets_page.find_planet_description
end
