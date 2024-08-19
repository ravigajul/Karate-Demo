Feature: Feature to Delete a Trello Board

Background:
    * url baseUrl 
    * def board = call read('classpath:trello/1.CreateBoard.feature') {name: 'NamedByCalling'}
    * def boardId = board.boardId
    * print boardId

@DeleteBoard
Scenario: Delete a trello Board
    Given path '/1/boards/' + boardId
    And params { key:#(trelloKey), token:#(trelloToken) }
    When method Delete
    Then status 200
