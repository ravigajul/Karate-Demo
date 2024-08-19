
Feature: Feature to create a Trello Board

Background:
    * url baseUrl 
    * def name = 'DefaultName'
Scenario: Create a trello Board
    Given path '/1/boards/'
    * eval if (name == null || name == '') name = 'DefaultName'
    And params { name:#(name), key:#(trelloKey), token:#(trelloToken) }
    When method post
    Then status 200
    * def boardId = response.id
    * print 'created board id is: ', boardId
