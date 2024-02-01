Feature: Calculate Holiday Entitlement on the government website

    Scenario: Calculate holiday entitlement for an employee
        Given I am on the "Calculate your holiday entitlement" page
        When I enter the following details:
            | Start Date | 01/02/2024 |
            | End Date   | 01/02/2025 |
        And I click the "Calculate" button
        Then the system should display the correct holiday entitlement
        And the result should match the expected entitlement for the given dates

    Scenario: Verify accessibility features
        When I interact with the page using keyboard navigation
        Then the page should remain accessible, and all functionalities should be usable

    Scenario: Verify cross-browser compatibility
        When I access the page from different browsers
        Then the page should render consistently, and all features should function as expected