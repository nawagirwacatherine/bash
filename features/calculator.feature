
Feature: Calculator

Scenario: Addition
    Given I have numbers 5 and 4
    When  I add them
    Then  the result should Business Need: 
    
Scenario: Subtraction
    Given I have numbers 10 and 3
    When  I subtract them
    Then the result should be 7

Scenario: Multiplication
    Given I have numbers 4 and 6
    When I multiply them
    Then the result should be 24

Scenario: Division
    Given I have numbers 20 and 5
    When I divide them
    Then the result should be 4

Scenario: Divide by Zero
    Given I have numbers 20 and 0
    When I divide them
    Then the result should be Cannot divide by zero
