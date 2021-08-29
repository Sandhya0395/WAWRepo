Feature: Weather information should be available under the search box

  As a user
  I want to search cities in search bar
  So that i can see the weather information according to my search

  @positive
  Scenario: Verify weather information can be seen in detailed
    Given website is opened in a browser
    And website is up and running
    And user is available on homepage
    When user type "Amravati" and search
    Then user will see weather information about "Amravati"
    And user will see "View More Details" option on homepage

  Scenario Outline: Verify weather information can be seen in detailed
    Given website is opened in a browser
    And website is up and running
    And user is available on homepage
    When user type "Amravati" and search
    Then user will see weather information about "Amravati"
    And user will see "View More Details" option on homepage
    And user will see below data
      | City Name   | Date and Time   | Temperature   | Cloud Information   |
      | <City Name> | <Date and Time> | <Temperature> | <Cloud Information> |
    Examples:
      | City Name | Date and Time                | Temperature | Cloud Information   |
      | Amravati  | Monday, 9  August 2021 19:36 | 28 °C       | Cloud 28 °C / 28 °C |

    And also see other informatiom in "View More Details" for the city given are as follows
      | City Name   | Visibility in KM   | Wind Speed in Km/h   | Pressure in hPa   | Humidity in %   | Sunrise time   | Sunset time   |
      | <City Name> | <Visibility in KM> | <Wind Speed in Km/h> | <Pressure in hPa> | <Humidity in %> | <Sunrise time> | <Sunset time> |

    Examples:
      | City Name | Visibility in KM | Wind Speed in Km/h | Pressure in hPa | Humidity in % | Sunrise time | Sunset time |
      | Amravati  | 10 KM            | 5.62 km/h          | 1004 hPa        | 94 %          | 5:59         | 18:46       |


