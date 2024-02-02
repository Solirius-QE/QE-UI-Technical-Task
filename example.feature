Feature: Calculate Holiday Entitlement on the government website

    Scenario: Calculate holiday entitlement for an employee
        Given I am on the "Calculate your holiday entitlement" page
        When I enter the following details:
            | Start Date | 01/02/2024 |
            | End Date   | 01/02/2025 |
        And I click the "Calculate" button
        Then the system should display the correct holiday entitlement
        And the result should match the expected entitlement for the given dates
