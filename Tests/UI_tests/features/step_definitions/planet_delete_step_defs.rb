Given("I am on the planet new post page") do
  planet_new.visit_new_posts
end

Given("I create a new post") do
  planet_new.fill_in_title('Pluto')
  planet_new.fill_in_image('https://www.gannett-cdn.com/-mm-/603bcbf25798f72e382ad17b83bb69bc7f9917a4/c=161-0-881-720&r=x153&c=150x150/local/-/media/2017/02/21/USATODAY/USATODAY/636232600728706146-AP-Space-Pluto.jpg')
  planet_new.fill_in_body('This is pluto')
  planet_new.fill_in_moons('Pluto has this many moons')
  planet_new.fill_in_missions('Pluto has had this many missions')
  planet_new.click_save_button
end

When("I click on the new planet link") do
  planet_delete.click_new_planet("Pluto")
end

When("I click the delete button") do
  planet_delete.click_delete
end

Then("the planet will be deleted from the homepage") do
  expect(planets_page.visit_planets_homepage).not_to have_selector("Pluto")
end
