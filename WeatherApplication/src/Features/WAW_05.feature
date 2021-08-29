Feature: Weather information should be available under search box

  As a user
  I want to search cities in search bar
  So that i can see the weather information according to my search

  Scenario: Verify temperature information changes according to their unit
    Given website is opened in a browser
    And website is up and running
    And user is available on homepage
    When user wants to see temperature of the city
    And user type "Amravati" and search
    Then user able to see the temperature in three units

  Scenario Outline: Verify temperature information changes according to their unit
    Given website is opened in a browser
    And website is up and running
    And user is available on homepage
    When user wants to see temperature of the city
    And user type "Amravati" and search
    Then user able to see the temperature in three units as follows
    When  user click on ℃
    Then user should see temperature in ℃ along with their actual values
    When  user click on ℉
    Then user should see temperature in ℉ along with value in degree fahrenheit
    When  user click on K
    Then  user should see temperature in K along with value in Kelvin
    And user see following information
      | City Name   | °C   | K   | ℉   |
      | <City Name> | <°C> | <K> | <℉> |

    Examples:
      | City Name | °C    | K     | ℉     |
      | Amravati  | 23 °C | 296 K | 73 °F |
