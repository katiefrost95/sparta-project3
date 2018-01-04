Given("I am on the api lookup page") do
  api_lookup.visit_api_lookup_page
end

Given("I enter a new ID in the search") do
  api_lookup.click_search_engine
  api_lookup.fill_in_id('2439898')
end

When("I click on the submit button") do
  api_lookup.click_id_submit_button
end

Then("the new asteroid data for that id should show") do
  expect(api_lookup.find_new_id).to eq("2439898")
end
