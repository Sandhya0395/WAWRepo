Feature: Application should have search functionality
  which can search the city to check weather information

  As a User
  I want to search cities in search bar
  So that i can see the weather information according to my search

  @positive
  Scenario: Verify user can search the city to check weather information
    Given Website is up and running
    And website is up and running
    When user enter valid city name
    And click on "Search" button or hitting enter key from keyboard
    Then user should see weather information with respective to that city

  Scenario Outline: Verify user can search the city to check weather information
    Given website is opened in browser
    And website is opened in browser
    When user search for <City Name> city
    And click on "Search" button or hitting enter key from keyboard
    Then user should see weather information with respective to that city

    Examples:
      | City Name |
      | Amravati  |
      | Badnera   |
      | Pune      |
      | Nagpur    |

  @negative
  Scenario: Verify user can search the city to check weather information
    Given website is opened in browser
    And website is up and running
    When user enter valid city name
    And click on "Search" button or hitting enter key from keyboard
    Then user should see weather information with respective to that city

  Scenario Outline: Verify if user enter integer or special character it will show error message
    Given Website is up and running
    And website is opened in browser
    And user is available on home page
    When user search for <Invalid City Name> city
    And click on "Search" button or hitting enter key from keyboard
    Examples:
      | Invalid City Name |
      | 1                 |
      | Amr@v@ti          |
      | 22@               |
      | Nagpur@1          |