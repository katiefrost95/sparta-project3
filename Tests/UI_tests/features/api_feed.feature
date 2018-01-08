Feature: Refreshing today's feed

  Scenario: If I go to today's asteroid feed I should be able to click and have returned a different asteroid
    Given I am on the api feed page
    When I click on the new asteroid button
    Then I should see new asteroid data
