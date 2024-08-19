Feature: Changing the request body at runtime

    @ChangeRequestBody
  Scenario: update request body at runtime
    * def requestBody = 
    #Multiline string
    """
    { FIRST_NAME: 'Karate', 
    LAST_NAME: 'DSL', 
    EMAIL: 'Karate@test.com'
    }
    """
    * print requestBody
    * set requestBody.FIRST_NAME = 'KarateDemo'
    * print requestBody
