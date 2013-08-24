@racks
Feature: Sports
  In order to know about different sports
  As a sport fan
  I want list of some sports

Scenario: List of the sports
  Given the system knows about the following sports::
    | name     | player           |
    | Cricket  | Sachin Tendulkar |
    | Tennis   | Andy Murray      |
    | FootBall | David Beckham    |
  When the client requests GET /sports
  Then response should be "200"
  And the JSON response should be an array with 3 "name" elements
  And response should be JSON:
   """
  [
  {"name": "Cricket", "player": "Sachin Tendulkar"},
  {"name": "Tennis", "player": "Andy Murray"},
  {"name": "FootBall", "player": "David Beckham"}
  ]
  """


