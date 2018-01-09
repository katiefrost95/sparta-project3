Given("I am on the planet homepage") do
  planets_page.visit_planets_homepage
end

When("I click on a planet link") do
  planets_page.click_planet_header
end

Then("I will be taken to that planet's show page") do
  planets_page.find_planet_description
end

#Second scenario

Given("I click on planets in the nav bar") do
  planets_page.click_navbar_planets
end

When("I click on new planets link") do
  planets_page.click_new_posts
end

Then("I should be taken to the new planets page") do
  planets_page.visit_new_posts_page
end

#Third scenario

Given("I click on asteroids in the nav bar") do
  planets_page.click_navbar_asteroids
end

When("I click on today's asteroid feed link") do
  planets_page.click_today_feed
end

Then("I should be taken to the today's feed page") do
  planets_page.visit_today_page
end

#fourth scenario

When("I click on asteroid lookup link") do
  planets_page.click_lookup_link
end

Then("I should be taken to the asteroid lookup page") do
  planets_page.visit_lookup_page
end

#5th scenario

When("I click on asteroid browse link") do
  planets_page.click_browse_link
end

Then("I should be taken to the asteroid browse page") do
  planets_page.visit_browse_page
end
