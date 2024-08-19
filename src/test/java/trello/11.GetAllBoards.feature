Feature:

Background:
    * url baseUrl 
Scenario: Get all boards
    Given path '/1/members/me/boards'
    And params { key:#(trelloKey), token:#(trelloToken) }
    When method get
    Then status 200
    * def allBoardsResponse = response

