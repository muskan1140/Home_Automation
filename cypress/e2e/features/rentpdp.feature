Feature: Rent Property Detail Page

    As a tester, I want to test the resale property details page of the homebazaar application

    Background:
        Given I am on the "rentPDP" page

    @regression @rentPDPPage-01 @automated
    Scenario Outline: Rent Property Detail Page - navigation from rent PDP Page to <city> search page
       Then I should see the "breadcrumbs" on the "pdp page"
        When I click on "<city>" on "breadcrumb"
        Then I should navigate to "<city>" page

        Examples:
            | city           |
            | Bhagwati Group |
            | Ghansoli       |
            | Navi Mumbai    |
            | Mumbai         |
            | Home           |
