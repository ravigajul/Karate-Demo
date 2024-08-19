Feature:

  Scenario: Delete all boards
    * def allBoards = call read('classpath:trello/11.GetAllBoards.feature')
    * def boardIds = $allBoards.allBoardsResponse[*].id
    * print boardIds
    * def data = karate.mapWithKey(boardIds, 'boardId')
    * call read('@called') data

    @ignore @called
  Scenario: Delete a board
    * url baseUrl
    Given path '/1/boards/' + boardId
    And params { key:#(trelloKey), token:#(trelloToken) }
    When method Delete
    Then status 200
    * print 'Deleted board id is: ' + boardId