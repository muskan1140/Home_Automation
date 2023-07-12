Feature: Builder Page

    As a tester, I want to test the builder page of the homebazaar application

    Background:
        Given I am on the "builder" page

    @automated @builderPage-01 @automated
    Scenario:Builder Page - checking the visibility of the builder description section
        Then I should see the "breadcrumbs" on the "page"
        And I should see the "builder Description Section" on the "page"
        And I should see the "builder Image" on the "builder description section"
        And I should see the "builder Name" on the "builder description section"
        And I should see the "builder Year" on the "builder description section"
        And I should see the "builder description" on the "builder description section"
        And I should see the "ready Possession With Count" on the "builder description section"
        And I should see the "under Construction With Count" on the "builder description section"
        And I should see the "total Project With Count" on the "builder description section"

    # //-------------------------------------------------------------------------------------------------------------------------------

    @automated @builderPage-02 @automated
    Scenario:Builder Page - Instant Call Back Form
        Then I should see the "request Info Form" on the "page"
        When I fill "data" on the "name Input Field" on the "form"
        And I fill "random number" on the "number Input Field" on the "form"
        And I fill "random email" on the "email Input Field" on the "form"
        And I select "first option" from "select Project Field" on the "form"
        And I check the "accept Terms And Conditions" on the "form"
        And I check the "homeloans checkbox" on the "form"
        And I click on the "get Instant Call Back Button" on the "form"
        Then I should see the "OTP Modal" on the "page"
    
    # //---------------------------------------------------------------------------------------------------------------------------------

    @automated @builderPage-03 @automated
    Scenario:Builder Page - Instant Call Back Form to Arrange Site Visit Form
        When I click on the "arrange Visit Site" on the "form"
        Then I should see the "schdedule Tour Form" on the "page"
        When I fill "data" on the "name Input Field" on the "form"
        And I fill "random number" on the "number Input Field" on the "form"
        And I fill "random email" on the "email Input Field" on the "form"
        And I select "first date" from "date field" on the "tour date input field" 
        And I select "time" from "choose time select field" on the "choose time input field"
        And I select "first option" from "select Project Field" on the "form"
        And I check the "accept Terms And Conditions" on the "form"
        And I check the "homeloans checkbox" on the "form"
        And I click on the "arrange Visit" on the "form"
        Then I should see the "OTP Modal" on the "page"

    # //------------------------------------------------------------------------------------------------------------------------------------
     
    @automated @builderPage-04 @automated
    Scenario:Builder Page - checking the count of the property should be greater than zero
        Then I should see the ""count" of the property should be greater than zero

    # //---------------------------------------------------------------------------------------------------------------------------------------
    
    @automated @builderPage-05 @automated
    Scenario: Builder Page - checking the visibility and functionality of the 360 view button on the image
        When I click on the "360 view Button" on the "property image"
        Then I should see the "360 modal" on the "page"

    # //-----------------------------------------------------------------------------------------------------------------------------------------
    
    @automated @builderPage-06 @automated
    Scenario: Builder Page - checking the visibility and functionality of the video button on the image
        When I click on the "video Button" on the "property image"
        Then I should see the "video modal" on the "page"

    # //--------------------------------------------------------------------------------------------------------------------------------------------
    
    @automated @builderPage-07 @automated
    Scenario: Builder Page - checking the Visibility of the heart icon and rating on the property image
        When I click on the "heart Icon" on the "property image"
        Then I should see the red "heart icon" on the "property image"

    # //--------------------------------------------------------------------------------------------------------------------------------------------
    
    @automated @builderPage-08 @automated
    Scenario: Builder Page - checking the visibility of items on the property card
        Then I should see the "property Name" on the "property card"
        And I should see the "builderName" on the "property card"
        And I should see the "property Location" on the "property card"
        And I should see the "property Price" on the "property card"
        And I should see the "property Size" on the "property card"
        And I should see the "property Area" on the "property card"
        And I should see the "property Status" on the "property card"
        And I should see the "calculate Emi Text" on the "property card"
        And I should see the "investment Text along with rating" on the "property card"
        When I click on the "View Details Button" on the "property card"
        Then I should navigate to "property detail" page

    # //------------------------------------------------------------------------------------------------------------------------------------------------

    @automated @builderPage-9 @automated
    Scenario: Builder Page - Instant Call Back Form
        When I click on the "instant Call Back Button" on the "property card"
        Then I should see the "schedule Tour Modal" on the "page"
        When I fill "data" on the "name Input Field" on the "instant call back modal"
        And I fill "random number" on the "number Input Field" on the "instant call back modal"
        And I fill "random email" on the "email Input Field" on the "instant call back modal"
        And I check the "accept the term checkbox" on the "instant call back modal"
        And I check the "homeloans checkbox" on the "instant call back modal"
        And I click on the "Instant Call Back Button" on the "instant call back modal"
        Then I should see the "OTP Modal" on the "page"

    # //----------------------------------------------------------------------------------------------------------------------------------------------------
     @automated @builderPage-10 @automated
    Scenario: Builder Page - Instant Call Back Form to Arrange Site Visit Form
        When I click on the "instant Call Back Button" on the "property card"
        When I click on the "arrange Site" on the "instant call back modal"
        When I fill "data" on the "name Input Field" on the "form"
        And I fill "random number" on the "number Input Field" on the "form"
        And I fill "random email" on the "email Input Field" on the "form"
        And I select "first date" from "date field" on the "tour date input field" 
        And I select "time" from "choose time select field" on the "choose time input field"
        And I check the "accept the term checkbox" on the "form"
        And I check the "homeloans checkbox" on the "form"
        And I click on the "arrange Visit" on the "form"
        Then I should see the "OTP Modal" on the "page"

    # //-------------------------------------------------------------------------------------------------------------------------------------------------------

    @automated @builderPage-11 @automated
    Scenario: Builder Page - Instant Call Back Form
       When I click on the "instant Call Back Button" on the "property card"
       Then I should see the "schedule Tour Modal" on the "page"
       When I click on the "close Button" on the "schedule tour modal"
       Then I should not see the "schedule tour modal" on the page

    # //-------------------------------------------------------------------------------------------------------------------------------------------------------

    @automated @builderPage-12 @automated
    Scenario Outline: Builder Page - checking the opening and closing of "<FAQquestion>" tab
        When I should navigate to "FAQ section" page
        When I click on "<questions>" on "page"
        And I should see the "answer on the FAQquestion" on the "page"
        And I click on "<questions>" on "page"
        And "question" tab should be closed

        Examples:
            | questions                                                 |
            | Which are the Luxurious Lodha Group Projects?               |
            | Which are the best Lodha Group township projects In Mumbai? |
            | Which Lodha Group Projects are currently for sale?          |
            | What is the speciality of Lodha Group?                      |
            | When was Lodha Group Founded?                               |

    # //---------------------------------------------------------------------------------------------------------------------------------------------------------

    @automated @builderPage-13 @automated
    Scenario Outline: Builder Page - City Filter Functionality
        When I select "<city>" from "all Cities" select field
        And I select "<popular parts>" from "popular Parts" select field
        And I select "<locality>" from "localities" select field
        And I click on the "search Button" on the "page"
        Then I should see the "properties" on the "page"

        Examples:
            | city   | popular parts  | locality  |
            | Mumbai | Western Mumbai | Bandra    |
            | Pune   | Pune North     | Hinjewadi |

    # //------------------------------------------------------------------------------------------------------------------------------------------------------------
    
    @automated @builderPage-14 @automated
    Scenario Outline: Builder Page - Recommended Filter for <filter> filter
        When I select "<filter>" from "Recommended" select field
        Then I should see the "properties" on the "page"


        Examples:
            | filter              |
            | Price - Low to High |
            | Price - High to Low |
            | Area - Low to High  |
            | Area - High to Low  |





