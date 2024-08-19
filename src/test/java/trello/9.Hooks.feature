Feature:

  Background:
    * def result = 'The background is before the scenario'
    * configure afterScenario = 
    """
    function()
    { 
        karate.call('classpath:trello/AfterHook.feature', result)
    }
    """
  Scenario:
    * print 'Im in the hooks feature file'
