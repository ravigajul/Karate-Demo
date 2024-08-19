Feature: Feature to demo how csv can be used in examples

@UsingCSVinExamples
  Scenario Outline: Using csv in example tag
    * print '<FIRST_NAME>' + ' ' + '<LAST_NAME>' + ' ' + '<EMAIL>' + ' ' + '<PASSWORD>'
    Examples:
      | read('./data/externalData.csv') |
