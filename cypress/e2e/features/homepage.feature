Feature: Homepage

    As a tester, I want to test the home page of the homebazaar application

    Background:
        Given I am on the "home" page

    @regression @sanity @homePage-1 @automated
    Scenario Outline: HomePage -  navigation of Homepage to <cityname> search page
        When I click on "<cityname>" city on the "search Area"
        And I click on the "search"
        Then I should navigate to "<cityname>" page

        Examples:
            | cityname  |
            | Mumbai    |
            | Pune      |
            | Bangalore |
            | Chennai   |
            | Noida     |

    # //----------------------------------------------------------------------------------------------------------

    @regression @sanity @homePage-2 @automated
    Scenario: Clicking Homebazaar logo should naviate to home page
        Given I navigate to "/buy-a-property" url
        When I click on the "logo" on the "header"
        Then I should navigate to "home" page

    # //------------------------------------------------------------------------------------------------------------

     @regression @sanity @homePage-3 @automated
    Scenario Outline: Search area - Clicking "<button>" button should navigate to "<expectedurl>" page
        When I click on "<city>" on "search Area"
        And I click on "<button>" on "search Area"
         Then I navigate to "<expectedurl>" url

        Examples:
            | city     | button | expectedurl    |
            | Mumbai   | Buy    | /buy/mumbai    |
            | Mumbai   | Sell   | /post-property |
            | Mumbai   | Rent   | /rent/mumbai   |

    # //--------------------------------------------------------------------------------------------------------------

    @regression @sanity @homePage-4 @automated
    Scenario Outline: How it works section - Clicking "<card>" card should navigate to "<expectedurl>" page
        When I click on the "<card>"
        Then I navigate to "<expectedurl>" url

        Examples:
            | card                    | expectedurl               |
            | Buying a Property       | /buy-a-property           |
            | Renting a Property      | /rent-a-property          |
            | Sell/Rent Your Property | /post-property            |
            | Get Home Loan           | /home-loan-emi-calculator |

    # //---------------------------------------------------------------------------------------------------------------

    @regression  @homePage-37 @automated
    Scenario Outline: Home Page - checking the navigation of homepage to <cityName> search page
        When I click on the "search Input Field"
        Then I should see the "city Dropdown List" on the "page"
        When I click on "<cityname>" city on the "dropdown List"
        Then I should navigate to "searched" page

        Examples:
            | cityname                 |
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

    # //------------------------------------------------------------------------------------------------------------

    @regression @sanity @homePage-5 @automated
    Scenario: Deals of the Week section - city should be as per the city selected in Search area
        Then I should see the "deal" on the "week section"
        And The "Deal of the Week" in city should have selected in search area

    # //------------------------------------------------------------------------------------------------------------

    @regression @sanity @homePage-7 @automated
    Scenario: Deals of the Week section - View All link
        Then I should see the "deal" on the "week section"
        When I click on the "view All Link" on the "week section"
        Then I should navigate to "corresponding property detail" page

    # //----------------------------------------------------------------------------------------------------------------

    @regression @sanity @homePage-8 @automated
    Scenario: Deals of the Week section - clicking on View Details is navigating to pdp page
        Then I should see the "deal" on the "week section"
        When I click on the "view Details" on the "deal of the weak section"
        Then I should navigate to "corresponding property detail" page

    # //------------------------------------------------------------------------------------------------------------------

    @regression @sanity @homePage-9 @automated
    Scenario: Deals of the Week section - Property details is appearing properly
        Then I should see the "deal" on the "week section"
        And I should see the "propertyImage" on "deals of the week section"
        And I should see the "propertyName" on "deals of the week section"
        And I should see the "builderName" on "deals of the week section"
        And I should see the "priceRange" on "deals of the week section"
        And I should see the "propertyArea" on "deals of the week section"
        And I should see the "propertySize" on "deals of the week section"
        And I should see the "propertyLocation" on "deals of the week section"
        When I clicks on the "propertyName" on "deals of the week section"
        Then I should navigate to "corresponding property detail" page

    # //-----------------------------------------------------------------------------------------------------------------------

      @regression @sanity @homePage-10 @automated
        Scenario: Deals of the Week section - Instant Call Back form
            Then I should see the "deal" on the "week section"
            When I click on the "instant Call Back" on the "property card"
            Then I should see the "instant Call Back Form" on the "page"
            When I fill "data" on the "name Input Field" on the "page"
            And I fill "random number" on the "number Input Field" on the "page"
            And I fill "random email" on the "email Input Field" on the "page"
            And I check the "I accept Terms and Conditions" on the "form"
            And I check the "homeloans checkbox" on the "form"
            When I click on the "get Instant Call Back Button" on the "form"
            Then I should see the "OTP Modal" on the "page"

    # //----------------------------------------------------------------------------------------------------------------------------

      @regression @sanity @homePage-11 @automated
        Scenario:  Deals of the Week section - Instant Call Back form to Arrange Site Visit
            Then I should see the "deal" on the "week section"
            When I click on the "instant Call Back" on the "property card"
            And I click on the "arrange Site" on the "pop up form"
            Then I should see the "arrange Site Visit Form" on the "page"
            When I fill "data" on the "name Input Field" on the "page"
            And I fill "random number" on the "number Input Field" on the "page"
            And I fill "random email" on the "email Input Field" on the "page"
           And I select "first date" from "date field" on the "date input field"
            And I select "time" from "choose time select field" on the "choose time input field"
            And I check the "I accept Terms and Conditions" on the "form"
            And I check the "homeloans checkbox" on the "form"
            And I click on the "arrange Visit" on the "form"
            Then I should see the "OTP Modal" on the "page"

    # //-------------------------------------------------------------------------------------------------------------------------------

    @regression  @homePage-12 @automated
        Scenario:Deals of the Week section - forward and backward arrow functionality
            Then I should see the "deal" on the "week section"
            When I click on the "forward Arrow" on the "deals of the week section"
            Then I should see the "property Cards" on the "deals of the week section"
            When I click on the "backward Arrow" on the "deals of the week section"
            Then I should see the "property Cards" on the "deals of the week section"
            When I click on the "forward Arrow" on the "deals of the week section"
            Then I should see the "property Cards" on the "deals of the week section"

    # //-------------------------------------------------------------------------------------------------------------------------

       @regression  @homePage-13 @automated
        Scenario: Discounted Deals section - city should be as per the city selected in Search area
            Then I should see the "discounted Deals Section" on the "page"
            And The "Discounted deals" in city should have selected in search area

    # //--------------------------------------------------------------------------------------------------------------------------

    @regression  @homePage-14 @automated
    Scenario: Discounted Deals section - date should be future date
        Then I should see the "discounted Deals Section" on the "page"
        And The Discounted "deals" should have the "future Date"

    # //---------------------------------------------------------------------------------------------------------------------------

    @regression  @homePage-15 @automated
    Scenario: Discounted Deals section - View All link
        Then I should see the "discounted Deals Section" on the "page"
        When I click on the "view All Link" on the "discounted deals section"
        Then I should navigate to "corressponding property detail" page

    # //-------------------------------------------------------------------------------------------------------------------------

    @regression  @homePage-17 @automated
    Scenario: Discounted Deals section - Property details is appearing properly
        Then I should see the "discounted Deals Section" on the "page"
        And I should see the "propertyImage" on "discounted deals section"
        And I should see the "property name" on "discounted deals section"
        And I should see the "builder name" on "discounted deals section"
        And I should see the "price range" on "discounted deals section"
        And I should see the "property size" on "discounted deals section"
        And I should see the "property location" on "discounted deals section"
        When I click on the "property name" on "discounted deals section"
        Then I should navigate to "corressponding property detail" page

    # //----------------------------------------------------------------------------------------------------------------------

    @regression  @homePage-18 @automated
    Scenario: Discounted Deals section - Instant Call Back form
        Then I should see the "discounted Deals Section" on the "page"
        When I click on the "instant Call Back" on the "property card"
        Then I should see the "instant Call Back Form" on the "page"
        When I fill "data" on the "name Input Field" on the "page"
        And I fill "random number" on the "number Input Field" on the "page"
        And I fill "random email" on the "email Input Field" on the "page"
        And I check the "I accept Terms and Conditions" on the "form"
        And I check the "homeloans checkbox" on the "form"
        When I click on the "get Instant Call Back Button" on the "form"
        Then I should see the "OTP Modal" on the "page"

    # //---------------------------------------------------------------------------------------------------------------------

    @regression  @homePage-19 @automated
    Scenario:Discounted Deals section - Instant Call Back form to Arrange Site Visit
        Then I should see the "discounted Deals Section" on the "page"
        When I click on the "instant Call Back" on the "property card"
        And I click on the "arrange Site" on the "pop up form"
        Then I should see the "arrange Site Visit Form" on the "page"
        When I fill "data" on the "name Input Field" on the "page"
        And I fill "random number" on the "number Input Field" on the "page"
        And I fill "random email" on the "email Input Field" on the "page"
        And I select "first date" from "date field" on the "date input field"
        And I select "time" from "choose time select field" on the "choose time input field"
        And I check the "I accept Terms and Conditions" on the "form"
        And I check the "homeloans checkbox" on the "form"
        And I click on the "arrange Visit" on the "form"
        Then I should see the "OTP Modal" on the "page"

    # //--------------------------------------------------------------------------------------------------------------------------

    @regression  @homePage-12 @automated
    Scenario:Discounted Deals section - forward and backward arrow functionality
        Then I should see the "discounted Deals Section" on the "page"
        When I clicks on the "forward Arrow" on "deals of the week section"
        Then I should see the "property Cards" on "deals of the week section"
        When I clicks on the "backward Arrow" on "deals of the week section"
        Then I should see the "property Cards" on "deals of the week section"
        When I clicks on the "forward Arrow" on "deals of the week section"
        Then I should see the "property Cards" on "deals of the week section"

    # //--------------------------------------------------------------------------------------------------------------------------
     
    @regression  @homePage-20 @automated
    Scenario: Recommended Projects Section - recommended property should be visible
        Then I should see the "recommended Property Section" on the "page"
        And I should see the "top Selling Recommended Projects Heading" on the "recommended property section"
        And I should see the "projects in High Demand Heading" on the "recommended property section"
        And I should see the "property Card" on the "recommended property section"

    # //---------------------------------------------------------------------------------------------------------------------------

    @regression  @homePage-21 @automated
    Scenario: Recommended Projects Section - View All link on the section
        Then I should see the "recommended Property Section" on the "page"
        When I click on the "view All Link" on the "recommended property section"
        Then I should navigate to "corressponding Recommended Project" page

    # //----------------------------------------------------------------------------------------------------------------------------

    @regression  @homePage-22 @automated
    Scenario: Recommended Projects Section - forward and backward arrow functionality on the recommended property section
        Then I should see the "recommended Property Section" on "page"
        When I click on the "forward Arrow" on the "deals of the week section"
        Then I should see the "property Cards" on "deals of the week section"
        When I click on the "backward Arrow" on "deals of the week section"
        Then I should see the "property Cards" on "deals of the week section"
        When I click on the "forward Arrow" on "deals of the week section"
        Then I should see the "property Cards" on "deals of the week section"

    # //------------------------------------------------------------------------------------------------------------------------------

    @regression  @homePage-23 @automated
    Scenario: Recommended Projects Section - clicking on property image is navigating to pdp page
        Then I should see the "recommended Property Section" on the "page"
        When I click on the "property Image" on the "Recommended Projects section"
        Then I should navigate to "corressponding Recommended Project" page

    # //-------------------------------------------------------------------------------------------------------------------------------

    @regression  @homePage-25 @automated
    Scenario: Recommended Projects Section - Property detail is appearing properly on recommended project card
        Then I should see the "recommended Property Section" on the "page"
        And I should see the "property image" on "discounted deals section"
        And I should see the "property name" on "discounted deals section"
        And I should see the "builder name" on "discounted deals section"
        And I should see the "price range" on "discounted deals section"
        And I should see the "property size" on "discounted deals section"
        And I should see the "property location" on "discounted deals section"
        When I clicks on the "property name" on "discounted deals section"
        Then I should navigate to "corressponding property detail" page

    # //---------------------------------------------------------------------------------------------------------------------------------

    @regression  @homePage-26 @automated
    Scenario: Recommended Projects Section - Instant Call Back form
        Then I should see the "recommended Property Section" on the "page"
        When I click on the "instant Call Back" on the "property card"
        Then I should see the "instant Call Back Form" on the "page"
        When I fill "data" on the "name Input Field" on the "page"
        And I fill "random number" on the "number Input Field" on the "page"
        And I fill "random email" on the "email Input Field" on the "page"
        And I check the "I accept Terms and Conditions" on the "form"
        And I check the "homeloans checkbox" on the "form"
        When I click on the "get Instant Call Back Button" on the "form"
        Then I should see the "OTP Modal" on the "page"

    # //---------------------------------------------------------------------------------------------------------------------------------

    @regression  @homePage-27 @automated
    Scenario: Recommended Projects Section - Instant Call Back form to Arrange Site Visit
        Then I should see the "recommended Property Section" on the "page"
        When I click on the "instant Call Back" on the "property card"
        And I click on the "arrange Site" on the "pop up form"
        Then I should see the "arrange Site Visit Form" on the "page"
        When I fill "data" on the "name Input Field" on the "page"
        And I fill "random number" on the "number Input Field" on the "page"
        And I fill "random email" on the "email Input Field" on the "page"
        And I select "first date" from "date field" on the "date input field"
        And I select "time" from "choose time select field" on the "choose time input field"
        And I check the "I accept Terms and Conditions" on the "form"
        And I check the "homeloans checkbox" on the "form"
        And I click on the "arrange Visit" on the "form"
        Then I should see the "OTP Modal" on the "page"

    # //---------------------------------------------------------------------------------------------------------------------------------

    @regression @homePage-28 @automated
    Scenario: Top Builder Section - city should be as per the city selected in Search area
        Then I should see the "top Builders Section" on the "page"
        And The "Top Builders" in city should have selected in search area

    # //------------------------------------------------------------------------------------------------------------------------------------

    @regression  @homePage-29 @automated
    Scenario: Top Builder Section - builders are present
        Then I should see the "top Builders Section" on the "page"
        And I should see the "builders List" on the "Top builders section"

    # //--------------------------------------------------------------------------------------------------------------------------------------

    @regression  @homePage-30 @automated
    Scenario: Top Builder Section - verify builder card details
        Then I should see the "top Builders Section" on the "page"
        And I should see the "builder Logo" on the "builder card"
        And I should see the "builder name" on the "builder card"
        And I should see the "builder Star Ratings" on the "builder card"
        And I should see the "builder Experience" on the "builder card"
        And I should see the "total Projects" on the "builder card"
        And I should see the "builder Description" on the "builder card"
        And I should see the "read More Button" on the "builder card"
        When I click on the "read More Button"
        Then I should navigate to "corressponding builder detail" page

    # //---------------------------------------------------------------------------------------------------------------------------------------

    @regression  @homePage-31 @automated
    Scenario: Top Builder Section - View all Projects button on the builder card
        Then I should see the "top Builders Section" on the "page"
        And I should see the "view all Projects Link" on the "builder card"
        When I click on the "view all Projects Link"
        Then I should navigate to "corressponding builder detail" page

    # //-----------------------------------------------------------------------------------------------------------------------------------------

     @regression  @homePage-32 @automated
    Scenario: Top Builder Section - view all project button on the section
        Then I should see the "top Builders Section" on the "page"
        And I should see the "viewAll Button" on the "top builder section"
        When I click on the "viewAll Button" on the "top builder section"
        Then I should navigate to "city in builder" page

    # //-------------------------------------------------------------------------------------------------------------------------------------------

     @regression  @homePage-33 @automated
    Scenario: Top Builder Section - forward and backward arrow functionality on Top Builder Section
        Then I should see the "top Builders Section" on the "page"
        When I clicks on the "forward Arrow" on "top builder section"
        Then I should see the "builder Cards" on the "top builder section"
        When I clicks on the "forward Arrow" on "top builder section"
        Then I should see the "builder Cards" on the "top builder section"
        When I clicks on the "forward Arrow" on "top builder section"
        Then I should see the "builder Cards" on the "top builder section"
        When I clicks on the "backward Arrow" on "top builder section"
        Then I should see the "builder Cards" on the "top builder section"
        When I clicks on the "backward Arrow" on "top builder section"
        Then I should see the "builder Cards" on the "top builder section"

    # //----------------------------------------------------------------------------------------------------------------------------------------------

    @regression  @homePage-34 @automated
    Scenario: Home Page - Meet Our Customers section
        Then I should see the "meet Our Customers Section" on the "page"
        And I should see the "meet Our Customers Heading" on the "meet our customer section"
        And I should see the "customer Feedback Cards" on the "meet our customer section"
        And I should see the count of the "customer Feedback Cards" should be "greater than zero"
        When I clicks on the "forward Arrow" on "meet our customer section"
        Then I should see the "customer Feedback Cards" on the "meet our customer section"
        When I clicks on the "forward Arrow" on "meet our customer section"
        Then I should see the "customer Feedback Cards" on the "meet our customer section"
        When I clicks on the "forward Arrow" on "meet our customer section"
        Then I should see the "customer Feedback Cards" on the "meet our customer section"
        When I clicks on the "backward Arrow" on "meet our customer section"
        Then I should see the "customer Feedback Cards" on the "meet our customer section"
        When I clicks on the "backward Arrow" on "meet our customer section"
        Then I should see the "customer Feedback Cards" on the "meet our customer section"

    # //--------------------------------------------------------------------------------------------------------------------------------------------------

    
    @regression  @homePage-35 @automated
    Scenario: Home Page - Top Articles Section
        Then I should see the "top Articles Section" on the "page"
        And I should see the "Articles Cards" on the "top article section"
        When I clicks on the "forward Arrow" on "top article section"
        Then I should see the "Articles Cards" on the "top article section"
        When I clicks on the "backward Arrow" on "top article section"
        Then I should see the "Articles Cards" on the "top article section"

    # //------------------------------------------------------------------------------------------------------------------------------------------------------

    @regression  @homePage-36 @automated
    Scenario: Home Page - Knowledge center card
        Then I should see the "top Articles Section" on the "page"
        When I clicks on the "forward Arrow" on "top article section"
        When I clicks on the "forward Arrow" on "top article section"
        Then I should see the "knowledge Center Card" on the "section"
        And I should see the "connect to knowledge center Button" on the "knowledge Center Card"
        When I click on the "connect to knowledge center Button" on the "knowledge Center Card"
        Then I should navigate to "knowledge center" page



