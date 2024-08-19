Feature: Feature to pass basic auth credentials

Background:
    * configure headers = { Authorization: 'Basic cG9zdG1hbjpwYXNzd29yZA==' } 
  @BasicAuth
  Scenario: pass basic auth credentials
    Given url 'https://postman-echo.com/basic-auth'
    When method get
    Then status 200
    And match response.authenticated == true
    * def authenticated = response.authenticated
    * karate.log ('Im in the Basic Auth feature file with authenticated as: ' + authenticated )
