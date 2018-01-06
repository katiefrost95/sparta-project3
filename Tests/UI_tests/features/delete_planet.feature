Feature: Delete posts

  Scenario: If I create a planet and go onto its show page I should be able to delete it
    Given I am on the planet new post page
    And I create a new post
    When I click on the new planet link
    And I click the delete button
    Then the planet will be deleted from the homepage
