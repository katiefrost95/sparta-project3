Feature: Planets Homepage

  Scenario: If I click on a planet I will be taken to that planet's show page
    Given I am on the planet homepage
    When I click on a planet link
    Then I will be taken to that planet's show page


  Scenario: If click on the new planets link I should be taken to correct page
    Given I am on the planet homepage
    And I click on planets in the nav bar
    When I click on new planets link
    Then I should be taken to the new planets page

  Scenario: If I click on the today's asteroid feed link I should be take to correct page
    Given I am on the planet homepage
    And I click on asteroids in the nav bar
    When I click on today's asteroid feed link
    Then I should be taken to the today's feed page

  Scenario: If I click on the asteroid lookup link I should be take to correct page
    Given I am on the planet homepage
    And I click on asteroids in the nav bar
    When I click on asteroid lookup link
    Then I should be taken to the asteroid lookup page

  Scenario: If I click on the asteroid browse link I should be take to correct page
    Given I am on the planet homepage
    And I click on asteroids in the nav bar
    When I click on asteroid browse link
    Then I should be taken to the asteroid browse page
