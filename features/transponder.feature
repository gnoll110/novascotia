Feature: Transponder

  Scenario: Ping the Transponder
    Given the Transponder
    When I ping it
    Then I see the ship's registry info
