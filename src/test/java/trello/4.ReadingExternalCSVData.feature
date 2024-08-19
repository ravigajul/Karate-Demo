Feature: Feature to demo external csv file reading

@ExternalCSV
  Scenario: scenario to demo reading external csv file
    # Same syntax for reading the json file
    * def data = read('classpath:trello/data/externalData.csv')
    * print data
    * print data[0].FIRST_NAME
    * print data[1].EMAIL