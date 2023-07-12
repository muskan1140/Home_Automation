Feature: Sidebar

    As a tester, I want to test the sidebar functionality of the homebazaar application

    Background:
        Given I am on the "home" page

    @regression @sidebar-01 @automated
    Scenario: Sidebar - click on hamburger icon and sidebar appear and click on the close icon and sidebar disappear
        When I click on the "hamburger Icon" on the "header"
        And I should see the "sidebar" on the "page"
        And I click on the "close Icon" on the "sidebar"
        Then I should not see the "sidebar" on the page

    # //-------------------------------------------------------------------------------------------------------------------

    @regression @sidebar-02 @automated
    Scenario Outline: Sidebar - click on the <button> button on sidebar and navigate to the <button> page
        When I click on the "hamburger Icon" on the "header"
        And I should see the "sidebar" on the "page"
        When I click on the "<button>" button on the "sidebar Page"
        Then I should navigate to "home" page

        Examples:
            | button             |
            | Home               |
            | Become Our Partner |
            | Knowledge Center   |

    # //-------------------------------------------------------------------------------------------------------------------

    @regression @sidebar-03 @automated
    Scenario Outline: Sidebar - check the <menuItem> expanded and <menuItem> closed
        And I click on the "hamburger Icon" on the "header"
        And I should see the "sidebar" on the "page"
        When I click on the "<menuItem>" button on the "sidebar Page"
        And "menu Item List" expanded
        And I click again on the "<menuItem>" button on the "sidebar Page"
        Then "menu Item List" closed
        When I click on the "close Icon" on the "sidebar"
        Then I should not see the "sidebar" on the page
        Examples:
            | menuItem      |
            | Buy           |
            | Sell          |
            | Rent          |
            | How it Works? |
            | Home Loan     |
            | About Us      |

    # //--------------------------------------------------------------------------------------------------------------------

    @regression @sidebar-04 @automated
    Scenario Outline: Sidebar - homepage to <item> page
        And I click on the "hamburger Icon" on the "header"
        And I should see the "sidebar" on the "page"
        When I click on the "<menuItem>" button on the "sidebar Page"
        And "menu Item List" expanded
        And I should see the "<item>" on the "menuItem" list
        And I click on the "<item>" on the "menuItem" list
        Then  I should navigate to "<item>" page

        Examples:
            | menuItem      | item                   |
            | Buy           | Buy a Property         |
            | Buy           | No Brokerage Policy    |
            | Buy           | Home Buying Guide      |
            | Sell          | Sell Your Property     |
            | Sell          | Home Worth Calculator  |
            | Sell          | Home Selling Guide     |
            | Rent          | Rent a Property        |
            | Rent          | No Brokerage Policy    |
            | Rent          | Renters Guide          |
            | How it Works? | Buyer                  |
            | How it Works? | Broker                 |
            | How it Works? | Builder                |
            | How it Works? | Landlord               |
            | How it Works? | Owner Resale           |
            | How it Works? | Tenant                 |
            | Home Loan     | EMI Calculator         |
            | Home Loan     | Eligibility Calculator |
            | About Us      | About Us               |
            | About Us      | Our Culture            |
            | About Us      | Awards                 |
            | About Us      | Careers                |


        # //------------------------------------------------------------------------------------------------------------

        @regression @sidebar-05 @automated
        Scenario: Sidebar - checking the visibility of the social media icons
           When I click on the "hamburger Icon" on the "header"
           And I should see the "sidebar" on the "page"
           Then the "social Media Links" should be visible



