Feature: Transponder

  Scenario: Ping the Transponder
    Given the transponder
    When I ping it
    Then I see the ship's registry info
