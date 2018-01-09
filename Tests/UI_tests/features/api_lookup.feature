Feature: Lookup data by ID

  Scenario: If I go to the api lookup feed I should be able to search asteroid by ID
    Given I am on the api lookup page
    And I enter a new ID in the search
    When I click on the submit button
    Then the new asteroid data for that id should show
