Given("I am on the api feed page") do
  api_feed.visit_api_feed_page
end

When("I click on the new asteroid button") do
  api_feed.click_refresh_button
end

Then("I should see new asteroid data") do
  api_feed.find_new_feed_name
end
