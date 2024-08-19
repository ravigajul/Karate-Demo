Feature: Feature to demo calling a feature file using arguments

Background:
    * url baseUrl 
   

@CallAndPassName
Scenario: Calling a feature file by passing arguments
    * def board = call read('classpath:trello/1.CreateBoard.feature') { name: 'NamedByCalling' }
    * print board.boardId
    * def boardId = board.boardId
    * print boardId
    # Given path '/1/boards/' + boardId
    # And params { key:#(trelloKey), token:#(trelloToken) }
    # When method Delete
    # Then status 200
