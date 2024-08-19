Feature: Feature to demo assertions by get All Boards

  Background:
    * url baseUrl 

    @AssertAllBoards
  Scenario: Assert all board by calling get all boards
    Given path '/1/members/me/boards'
    And params {  key:#(trelloKey), token:#(trelloToken) }
    When method get
    Then status 200
    # Expects actual value to be a JSON array
    And match response == '#array'
    # Match all the names of the boards to be not null
    And match each response[*].name == '#notnull'    
    # Match all the names of the boards to be a string
    And match each response[*].name == '#string'
    # Match status to be ok
    And match response[0].limits.attachments.perBoard.status == 'ok'
    # Match pinned to be a boolean
    And match each response[*].pinned == '#boolean'
    # Match starred to be false
    And match response[0].pinned == false
    # Match to be a number
    And match each response[*].limits.attachments.perBoard.disableAt == '#number'

