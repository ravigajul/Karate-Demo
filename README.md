# Karate-Demo

Add config.trelloKey = '<>>'
    config.trelloToken = '<>>' to karate-config.js file before executing

## Different Method

1. GET
2. POST
3. DELETE

## Calling a feature File

1. Calling a feature file

```javascript
 * def board = call read('classpath:trello/CreateBoard.feature')
 ```

 1. Calling a feature file by passing Arguments

 ```javascript
 * def board = call read('classpath:trello/CreateBoard.feature') { name: 'NamedByCalling' }
 ```

## Maven Goal to run the test

```javascript
mvn test '-Dkarate.options=--tags @GetAllBoards'
```

## Maven Goal to run the gatling performance test

```bash
mvn clean test-compile gatling:test
```