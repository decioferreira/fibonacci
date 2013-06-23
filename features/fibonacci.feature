Feature: Fibonacci sequence
  In order to avoid mistakes
  As a math geek
  I want to be told the n Fibonacci number

  Scenario Outline: Fibonacci number
    Given I ask for the Fibonacci number of index "<index>"
     Then I should receive the result of "<result>"

    Scenarios: first two numbers
      | index | result |
      | 0     | 0      |
      | 1     | 1      |

    Scenarios: subsequent numbers
      | index | result |
      | 2     | 1      |
      | 3     | 2      |
      | 4     | 3      |
      | 5     | 5      |
      | 6     | 8      |

  Scenario: string value
    Given I ask the Fibonacci number for the string "two"
     Then I should receive a raise of an error with type "TypeError"
