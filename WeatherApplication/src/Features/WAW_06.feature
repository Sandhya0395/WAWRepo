Feature: Weather information should be available under search box

  As a user
  I want to search cities in search bar
  So that i can see the weather information according to my search

  Scenario: Verify my favourite cities
    Given website is opened in a browser
    And website is up and running
    And user is available on homepage
    When  user click on "Add to favourite"
    Then that particular city should be added into the favourite
    And user can view them using My Cities option from the homepage

  Scenario Outline: Verify my favourite cities
    Given website is opened in a browser
    And website is up and running
    And user is available on homepage
    When user search <City Name> city
    And user type "Amravati" and search
    And user click on "Add to favourite"
    Then user can view <City Name> using My Cities option from the homepage
    And user should following information
      | City Name   | Add to favourite   | My cities   |
      | <City Name> | <Add to favourite> | <My cities> |

    Examples:
      | City Name | Add to favourite | My cities |
      | Amravati  | Add to favourite | Amravati  |