Feature: Feature to Get all Trello Boards

Background:
    * url baseUrl 

@GetAllBoards
Scenario: Get all trello Boards
    Given path '/1/members/me/boards'
    And params { key:#(trelloKey), token:#(trelloToken) }
    When method get
    Then status 200