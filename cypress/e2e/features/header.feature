Feature: Header

    As a tester, I want to test the header of the homebazaar application

    Background:
        Given I am on the "home" page

    @regression @sanity @header-01 @automated
    Scenario: Header - checking the functionality of the homebazaar icon on the header of the homepage
        And I navigate to "/buy-a-property" url
        When I click on the "logo" on the "header"
        Then I should navigate to "home" page

    # //---------------------------------------------------------------------------------------------------------

    @regression @sanity @header-02 @automated
    Scenario: Header - checking the functionality of Post Property button of the header
        When I click on the "post Property" on the "header"
        Then I navigate to "/post-property" url

    # //----------------------------------------------------------------------------------------------------------

    @regression @sanity @header-03 @automated
    Scenario Outline: Header - checking the dropdown functionality of <button> button
        When I click on the "<button>" button on the "Header"
        Then I should see the "dropdownList" under "<button>" button

        Examples:
            | button    |
            | Home Loan |
            | buy       |
            | sell      |
            | rent      |

    # //----------------------------------------------------------------------------------------------------------

    @regression @sanity @header-05 @automated
    Scenario: Header - checking the functionality of the heart icon on the header
        When I click on the "heartIcon" on the "header"
        Then I should see the "shortlisted Any Property Tab" on the "page"
        When I click on the "view All" on the "shortlisted any property tab"
        Then I navigate to "/shortlisted-properties" url

    # //------------------------------------------------------------------------------------------------------------

    @regression @sanity @header-06 @automated
    Scenario: Header - checking the functionality of the profile icon on the header
        When I click on the "profile Icon" on the "header"
        Then I should see the "login Modal" on the "header"

    # //--------------------------------------------------------------------------------------------------------------

     @regression @sanity @header-07 @automated
     Scenario: Sidebar - click on hamburger icon and sidebar appear and click on the close icon and sidebar disappear
        When I click on the "hamburger Icon" on the "header"
        And I should see the "sidebar" on the "page"
        And I click on the "close Icon" on the "sidebar"
        Then I should not see the "sidebar" on the page

    # //-----------------------------------------------------------------------------------------------------------------

    @regression @sanity @header-08 @automated
    Scenario Outline: Header - checking the functionality of the "Buy" button for <cityName> city on the search header
        Then I scroll to the "bottom" to see the footer
        When I click on the "Buy" on the "property Type"
        And I select "Buy" on the "property Type"
        Then I scroll to the "bottom" to see the footer
        When I click on the "Mumbai" on the "city Type"
        And I select "<cityName>" city on the "city Type"
        Then I navigate to "/buy/<cityName>" url

        Examples:
            | cityName  |
            | Mumbai    |
            | Pune      |
            | Bangalore |
            | Chennai   |
            | Noida     |

    # //----------------------------------------------------------------------------------------------------------------------

      @regression @sanity @header-09 @automated
    Scenario Outline: Header - checking the functionality of the "Rent" button for <cityName> city on the search header
        Then I scroll to the "bottom" to see the footer
        When I click on the "Buy" on the "property Type"
        And I select "Rent" on the "rent PropertyType"
        Then I scroll to the "bottom" to see the footer
        When I click on the "Mumbai" on the "city Type"
        And I select "<cityName>" city on the "city Type"
        Then I navigate to "/rent/<cityName>" url
        Examples:
            | cityName  |
            | Mumbai    |
            | Pune      |
            | Bangalore |
            | Chennai   |
            | Noida     |

    # //--------------------------------------------------------------------------------------------------------------------

    @regression @sanity @header-10 @automated
    Scenario Outline: Header - checking the navigation of homepage to <cityName> search page
        Then I scroll to the "bottom" to see the footer
        When I click on the "search Input" on the "header"
        Then I should see the "city Dropdown List" on the "page"
        When I click on the "<cityName>" on the "city Dropdown List"
        Then I navigate to "<cityName>" url

        Examples:
            | cityName                 |
            | Navi Mumbai              |
            | Thane                    |
            | Central Mumbai           |
            | Western Mumbai           |
            | South Mumbai             |
            | Kalyan Dombivali         |
            | Dombivali                |
            | Panvel                   |
            | Majiwada                 |
            | Thombrewadi              |
            | Bhingarwadi              |
            | Bhokarpada Road          |
            | Hiranandani Fortune City |
            | Lodha Upper Thane        |
            | Rustomjee Urbania        |
            | Lodha Group              |
            | Godrej Properties        |
            | Rustomjee Group          |


    

