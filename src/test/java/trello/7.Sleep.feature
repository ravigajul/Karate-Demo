Feature: Sleeping in btw steps

    Background:
        * def time = 10 

    @Sleep
  Scenario:   Sleep for 10 seconds
    * print 'Sleeping for 10 seconds'
    * eval karate.pause(time)   
    * print 'Sleeping for 10 seconds is done'
