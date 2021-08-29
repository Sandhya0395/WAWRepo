Feature:  Weather information should be available under the search box

  As a user
  I want to search cities in search bar
  So that i can see the weather information according to my search

  @positive
  Scenario: Verify weather information should be available under the search box

    Given website is opened in browser
    And website is up and running
    When user enter valid city name
    And click on "Search" button or hitting enter key from keyboard
    Then user should see weather information with respective to that city

  Scenario Outline: Verify user can search the city to check weather information

    Given website is opened in browser
    And Website is up and running
    And user is available on home page
    When user search for <City Name> city
    And click on "Search" button or hitting enter key from keyboard
    Then user should see the following information of <City Name> specific to that city
      | City Name   | Date and Time   | Temperature   | Cloud Information   |
      | <City Name> | <Date and Time> | <Temperature> | <Cloud Information> |

    Examples:
      | City Name | Date and Time                   | Temperature | Cloud Information   |
      | Amravati  | Monday, 9  August 2021 19:36    | 28 °C       | Cloud 28 °C / 28 °C |
      | Nagpur,IN | Tuesday, 10 August 2021 19:36   | 29 °C       | Rain 29 °C / 29 °C  |
      | Pune,IN   | Wednesday, 11 August 2021 19:36 | 24 °C       | Cloud 24 °C / 24 °C |