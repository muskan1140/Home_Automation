Feature: Property Detail Page

    As a tester, I want to test the property details page of the homebazaar application

    Background:
        Given I am on the "buyPDP" page

    @regression @buyPDPPage-01 @automated
    Scenario Outline: Buy Property Detail Page - navigation from buy PDP Page to <city> search page
        Then I should see the "breadcrumbs" on the "pdp page"
        When I click on "<city>" on "breadcrumb"
        Then I should navigate to "<city>" page

        Examples:
            | city             |
            | Lodha Group      |
            | Dombivali        |
            | Kalyan Dombivali |
            | Mumbai           |
            | Home             |

    # //----------------------------------------------------------------------------------------------------------

     @regression @buyPDPPage-02 @automated
        Scenario: Buy Property Detail Page - verification of property heading
            Then I should see the "project Name" on the "pdp page heading"
            When I hover over "project Name" on the "pdp page heading"
            Then I should see the "location" on the "pdp page heading"
            And I should see the "property Rating" on the "pdp page heading"
            And I should see the "configuration" on the "pdp page heading"
            And I should see the "starting Price" on the "pdp page heading"
            And I should see the "carpet Area" on the "pdp page heading"

    # //------------------------------------------------------------------------------------------------------------

    @regression @buyPDPPage-03 @automated
    Scenario: Buy Property Detail Page - checking the functionality of shortlist property icon
        When I click on the "shortlist Property Icon"
        Then I should see the red "shortlist Property Icon"

    # //-------------------------------------------------------------------------------------------------------------

    @regression @buyPDPPage-04 @automated
    Scenario: Buy Property Detail Page - checking the functionality of share icon
        When I click on the "share Icon"
        Then I should see the "social media icon" modal on the page

    # //--------------------------------------------------------------------------------------------------------------

    @regression @buyPDPPage-05 @automated
    Scenario: Buy Property Detail Page - functionality of items on the hero image
        When I should see the "hero Image" on the "page"
        And I should see the "livability Rating" on the "image"
        When I hover over "livability Rating" on the "image"
        And I should see the "investment Rating" on the "image"
        When I hover over "investment Rating" on the "image"

    # //-----------------------------------------------------------------------------------------------------------------

    @regression @buyPDPPage-06 @automated
    Scenario:Buy Property Detail Page - functionality of Video Tour button which navigate to arrange site visit form on the hero image
        When I should see the "hero Image" modal on the page
        And I click on the "video Tour" on the "hero image"
        Then I should see the "image" modal on the page
        When I click on the "arrange Site Visit" on the "image modal"
        When I fill "data" on the "name Input Field" on the "image modal"
        And I fill "random number" on the "number Input Field" on the "image modal"
        And I fill "random email" on the "email Input Field" on the "image modal"
        And I select "first date" from "date field" on the "image modal"
        And I select "time" from "choose time select field" on the "image modal"
        And I check the "accept the term checkbox" on the "image modal"
        And I check the "homeloans checkbox" on the "image modal"
        And I click on the "arrange Visit" button on the image modal
        Then I should see the "OTP Modal" on the "page"

    # //-------------------------------------------------------------------------------------------------------------------------
     @regression @buyPDPPage-07 @automated
    Scenario:Buy Property Detail Page - functionality of Street View button which navigate to arrange site visit form on the hero image
        When I should see the "hero Image" modal on the page
        And I click on the "street View Text" on the "hero image"
        Then I should see the "image" modal on the page
        When I click on the "arrange Site Visit" on the "image modal"
        When I fill "data" on the "name Input Field" on the "image modal"
        And I fill "random number" on the "number Input Field" on the "image modal"
        And I fill "random email" on the "email Input Field" on the "image modal"
        And I select "first date" from "date field" on the "image modal"
        And I select "time" from "choose time select field" on the "image modal"
        And I check the "accept the term checkbox" on the "image modal"
        And I check the "homeloans checkbox" on the "image modal"
        And I click on the "arrange Visit" on the "image modal"
        Then I should see the "OTP Modal" on the "page"

    # //---------------------------------------------------------------------------------------------------------------------------
    @regression @buyPDPPage-08 @automated
    Scenario:Buy Property Detail Page - functionality of Images button which navigate to arrange site visit form on the hero image
        When I should see the "hero Image" modal on the page
        And I click on the "images Text" on the "hero image"
        Then I should see the "image" modal on the page
        When I click on the "arrange Site Visit" on the "image modal"
        When I fill "data" on the "name Input Field" on the "image modal"
        And I fill "random number" on the "number Input Field" on the "image modal"
        And I fill "random email" on the "email Input Field" on the "image modal"
        And I select "first date" from "date field" on the "image modal"
        And I select "time" from "choose time select field" on the "image modal"
        And I check the "accept the term checkbox" on the "image modal"
        And I check the "homeloans checkbox" on the "image modal"
        And I click on the "arrange Visit" on the "image modal"
        Then I should see the "OTP Modal" on the page

    # //------------------------------------------------------------------------------------------------------------------------------
    @regression @buyPDPPage-08 @automated
    Scenario: Buy Property Detail Page - checking the functionality of "Read More" button on the introduction section
       When I click on the "introduction" tab on the header
       And I click on the "read more" on the "introduction section"
       Then I should see the "complete Description" on the "introduction section"
       When I click on the "read less" on the "introduction section"
       Then I should not see the "complete Description" on the page

    # //------------------------------------------------------------------------------------------------------------------------------
    @regression @buyPDPPage-08 @automated
    Scenario:Buy Property Detail Page - checking the functionality of Price Breakup button
        When I click on the "Pricing & Floor Plans" tab on the header
        And I click on the "3 BHK tab" on the "pricing and floor section"
        And I click on the "price Breakup Column" on the "pricing and floor section"
        When I fill "data" on the "name Input Field" on the "image modal"
        And I fill "random number" on the "number Input Field" on the "image modal"
        And I fill "random email" on the "email Input Field" on the "image modal"
        And I check the "accept the term checkbox" on the "image modal"
        And I check the "homeloans checkbox" on the "image modal"
        And I click on the "Request Price Now" on the "image modal"
        Then I should see the "OTP Modal" on the "page"

    # //-----------------------------------------------------------------------------------------------------------------------------
    @regression @buyPDPPage-09 @automated
    Scenario: Buy Property Detail Page - checking the functionality of Price Breakup button (Arrange Site Visit Form)
        When I click on the "Pricing & Floor Plans" tab on the header
        And I click on the "3 BHK tab" on the "pricing and floor section"
        And I click on the "price Breakup Column" on the "pricing and floor section"
        And I click on the "arrange Site Visit Button"
        When I fill "data" on the "name Input Field" on the "popup form"
        And I fill "random number" on the "number Input Field" on the "popup form"
        And I fill "random email" on the "email Input Field" on the "popup form"
        And I select "first date" from "date field" on the "popup form"
        And I select "time" from "choose time select field" on the "popup form"
        And I check the "accept the term checkbox" on the "popup form"
        And I check the "homeloans checkbox" on the "popup form"
        And I click on the "arrange Visit" on the "popup form"
        Then I should see the "OTP Modal" on the "page"

    # //-------------------------------------------------------------------------------------------------------------------------------
    @regression @buyPDPPage-10 @automated
    Scenario: Buy Property Detail Page - checking the functionlity of Get The Best Quote button
        When I click on the "Pricing & Floor Plans" tab on the header
        And I click on the "Get The Best Quote button" on the "pricing and floor section"
        When I fill "data" on the "name Input Field" on the "popup form"
        And I fill "random number" on the "number Input Field" on the "popup form"
        And I fill "random email" on the "email Input Field" on the "popup form"
        And I check the "accept the term checkbox" on the "popup form"
        And I check the "homeloans checkbox" on the "popup form"
        And I click on the "get Best Quote" on the "popup form"
        Then I should see the "OTP Modal" on the "page"

    # //-----------------------------------------------------------------------------------------------------------------------------------
    @regression @buyPDPPage-11 @automated
    Scenario: Buy Property Detail Page - checking the functionlity of Get The Best Quote button (Arrange Site Visit Form)
        When I click on the "Pricing & Floor Plans" tab on the header
        And I click on the "Get The Best Quote button" on the "pricing and floor section"
        And I click on the "arrange Site Visit Button"
        When I fill "data" on the "name Input Field" on the "popup form"
        And I fill "random number" on the "number Input Field" on the "popup form"
        And I fill "random email" on the "email Input Field" on the "popup form"
        And I select "first date" from "date field" on the "popup form"
        And I select "time" from "choose time select field" on the "popup form"
        And I check the "accept the term checkbox" on the "popup form"
        And I check the "homeloans checkbox" on the "popup form"
        And I click on the "arrange Visit" on the "popup form"
        Then I should see the "OTP Modal" on the "page"

    # //-----------------------------------------------------------------------------------------------------------------------------------
    @regression @buyPDPPage-12 @automated
    Scenario: Buy Property Detail Page - checking the functionality of Get Cost Sheet button
        When I click on the "Pricing & Floor Plans" tab on the header
        And I click on the "Get Cost Sheet button" on the "pricing and floor section"
        When I fill "data" on the "name Input Field" on the "popup form"
        And I fill "random number" on the "number Input Field" on the "popup form"
        And I fill "random email" on the "email Input Field" on the "popup form"
        And I check the "accept the term checkbox" on the "popup form"
        And I check the "homeloans checkbox" on the "popup form"
        And I click on the "get Cost Sheet" on the "popup form"
        Then I should see the "OTP Modal" on the "page"

    # //----------------------------------------------------------------------------------------------------------------------------------
    @regression @buyPDPPage-13 @automated
    Scenario: Buy Property Detail Page - checking the functionlity of Get Cost Sheet button (Arrange Site Visit Form)
        When I click on the "Pricing & Floor Plans" tab on the header
        And I click on the "Get Cost Sheet button" on the "pricing and floor section"
        And I click on the "arrange Site Visit Button"
        When I fill "data" on the "name Input Field" on the "popup form"
        And I fill "random number" on the "number Input Field" on the "popup form"
        And I fill "random email" on the "email Input Field" on the "popup form"
        And I select "first date" from "date field" on the "popup form"
        And I select "time" from "choose time select field" on the "popup form"
        And I check the "accept the term checkbox" on the "popup form"
        And I check the "homeloans checkbox" on the "popup form"
        And I click on the "arrange Visit" on the "popup form"
        Then I should see the "OTP Modal" on the "page"

    # //------------------------------------------------------------------------------------------------------------------------------------
    # @regression @buyPDPPage-14 @automated
    # Scenario: Buy Property Detail Page - checking the functionality of floor map section
    #     When I click on the "Pricing & Floor Plans" tab on the header
    #     And I click on the "floor Map" on the "pricing and floor section"
    #     Then I should see the "image Modal" on the page
    #     When I click on the "arrange Site Visit" on the "image modal"
    #     When I fill "data" on the "name Input Field" on the "image modal"
    #     And I fill "random number" on the "number Input Field" on the "image modal"
    #     And I fill "random email" on the "email Input Field" on the "image modal"
    #     And I select "first date" from "date field" on the "image modal"
    #     And I select "time" from "choose time select field" on the "image modal"
    #     And I check the "accept the term checkbox" on the "image modal"
    #     And I check the "homeloans checkbox" on the "image modal"
    #     And I click on the "arrange Visit" on the "image modal"
    #     Then I should see the "OTP Modal" on the "page"

    # //------------------------------------------------------------------------------------------------------------------------------------
    @regression @buyPDPPage-16 @automated
    Scenario Outline: Buy Property Detail Page - checking the functionality of Map Section for <tab> tab
        When I click on the "Locality" tab on the header
        Then I should see the "map" on the "map section"
        When I click on the "<tab>" on the "map" section

        Examples:
            | tab           |
            | Commute       |
            | Entertainment |
            | Essentials    |
            | Health        |
            | Religious     |
            | Security      |

    # //----------------------------------------------------------------------------------------------------------------------------------------  
    @regression @buyPDPPage-17 @automated
    Scenario: Buy Property Detail Page - Bank Offer Section
        When  I navigate to the "bank offer section"
        Then I should see the "bank Logo" on the "bank offer section"
        When I click on the "right Button" on the "bank offer section"
        Then I should see the "bank Logo" on the "bank offer section"
        When I click on the "right Button" on the "bank offer section"
        Then I should see the "bank Logo" on the "bank offer section"
        When I click on the "right Button" on the "bank offer section"
        Then I should see the "bank Logo" on the "bank offer section"
        When I click on the "left Button" on the "bank offer section"
        Then I should see the "bank Logo" on the "bank offer section"
        And I click on the "contact Now Button"
        Then I should navigate to "home loan emi calculator" page

    # //---------------------------------------------------------------------------------------------------------------------------------------------
    #  @regression @buyPDPPage-18 @automated
    # Scenario: Buy Property Detail Page - checking the functionality of emi calculator
    #     When I click on the "Locality" tab on the header
    #     And I navigate to the "emi calculator section"
    #     And I click on the "emi calculator section"
    #     Then I should see the "tab open" on the "emi calculator section"
    #     And I fill "1000000" on the "loan Amount" on the "input field"
    #     And I fill "20" on the "loan Tenure" on the "input field"
    #     And I fill "9" on the "loan Interest" on the "input field"
    #     And I should see the "10,00,000" on the "Loan Amount Field"
    #     And I should see the "15,20,109" on the "total Amount Field"
    #     And I should see the "12,668" on the "monthly Emi Field"

    # //----------------------------------------------------------------------------------------------------------------------------------------------
    @regression @buyPDPPage-19 @automated
    Scenario: Buy Property Detail Page - Properties Section
        When I click on the "Locality" tab on the header
        And I navigate to the "properties section"
        Then I should see the "description" on the "properties section"
        And I click on the "Read More" on the "properties section"
        Then I should see the "Complete Description" on the "properties section"
        When I click on the "Read Less" on the "properties section"
        Then I should not see the "Complete Description" on the page

    # //-------------------------------------------------------------------------------------------------------------------------------------------------
    @regression @buyPDPPage-20 @automated
    Scenario Outline: Buy Property Detail Page - Rating and Reviews Section for <userType>
        When I click on the "rating & Review" tab on the header
        And I click on the "write Review" on the "rating and reviews section"
        Then I should see the "review Modal" on the "rating and reviews section"
        And I click on the "<userType>" on you Know "locality Question"
        And I click on the "4" star on the "amenities & Other Features" question
        And I click on the "4" star on the "quality Of Construction" question
        And I click on the "4" star on the "open Areas & Gardens" question
        And I click on the "4" star on the "connectivity & Daily Commuting" question
        And I fill "test question" on the "advantages" on the "question"
        And I fill "test question" on the "disadvantages" on the "question"
        And I click on the "post Review Button" on the "rating and review modal"
        And I fill "data" on the "name input field" on the "modal"
        And I click on the "post Now" on the "rating and review modal"
        And I should see the "thank You" modal on the page
        When I click on the "close Button"
        Then I should not see the "thank You" on the page

        Examples:
            | userType          |
            | Owner             |
            | Tenant            |
            | Former Resident   |
            | Real Estate Agent |
            | Lives Nearby      |

    # //-----------------------------------------------------------------------------------------------------------------------------------------
    
    # @regression @buyPDPPage-21 @automated
    # Scenario Outline: Buy Property Detail Page- FAQ section for <FAQquestion>
    #     When I click on the "FAQ" tab on the header
    #     And I click on the "readMore" on the "FAQ section"
    #     When I click on the "<FAQquestion>" on the "page"
    #     # Then "<FAQquestion>" tab should be open on the page
    #     # And I should see the answer on the "<FAQquestion>" tab on the page
    #     # And I click on the "<FAQquestion>" again
    #     # And "<FAQquestion>" tab should be closed

    #     Examples:
    #         | FAQquestion                                              |
    #         | Is Lodha Codename Premier A Good For Investment?         |
    #         | How many floors are there on Lodha Codename Premier?     |
    #         | What is the address of Lodha Codename Premier?           |
    #         | What is  Lodha Codename Premier 1 BHK Price?             |
    #         | What is  Lodha Codename Premier 2 BHK Price?             |
    #         | What is  Lodha Codename Premier 3 BHK Price?             |
    #         | What is the Possession Status of Lodha Codename Premier? |
    #         | How to check Lodha Codename Premier Sample Flat?         |

    # //--------------------------------------------------------------------------------------------------------------------------------------------------
    @regression @buyPDPPage-22 @automated
    Scenario Outline: Buy Property Detail Page - Question Section for <tab> tab
        When I click on the "FAQ" tab on the header
        When I navigate to the "question Section"
        Then I click on the "have Any Questions? Ask us..." on the "section"
        Then I should see the "question" modal on the page
        When I fill "test question" on the "question Field" on the "page"
        And I click on the "<tab>" on the "ques" section
        And I click on the "ask Question Button"
        Then I should see the "thank You" modal on the page

        Examples:
            | tab                         |
            | New Projects                |
            | Sale                        |
            | Purchase                    |
            | Rentals                     |
            | Residential                 |
            | Commercial                  |
            | Home Loan                   |
            | Legal and Taxation          |
            | Investment                  |
            | Information - City/Locality |
            | Others                      |

    # //---------------------------------------------------------------------------------------------------------------------------------------------------
    @regression @buyPDPPage-23 @automated
    Scenario:Buy Property Detail Page - About Builder Section
        And I click on the "about Builder" tab on the header
        And I click on the "ReadMore" on the "about builder section"
        Then I should see the "complete Description" on the "about builder section"
        When I click on the "ReadLess" on the "about builder section"
        Then I should not see the "complete Description" on the page

    # //-----------------------------------------------------------------------------------------------------------------------------------------------------
    @regression @buyPDPPage-24 @automated
    Scenario:Buy Property Detail Page - checking view all functionality for More Projects Section
        When I click on the "about Builder" tab on the header
        When I navigate to the "more Projects Section"
        And I click on the "view All Button"
        Then I should navigate to "property details" page

    # //------------------------------------------------------------------------------------------------------------------------------------------------------
    @regression @buyPDPPage-25 @automated
    Scenario: Buy Property Detail Page - checking arrow functionality for More Projects Section
        When I click on the "about Builder" tab on the header
        When I navigate to the "more Projects Section"
        When I click on the "right Arrow" 
        Then I should see the "properties Modal" on the "page"
        When I click on the "left Arrow" 
        Then I should see the "properties Modal" on the "page"
  
    # //-------------------------------------------------------------------------------------------------------------------------------------------------------
     @regression @buyPDPPage-26 @automated
    Scenario: Buy Property Detail Page  - clicking the property card should navigate to PDP Page for More Projects Section
    When I click on the "about Builder" tab on the header
    When I navigate to the "more Projects Section"
    And I click on the "first Property Card"
    Then I should navigate to "property details" page

    # //---------------------------------------------------------------------------------------------------------------------------------------------------------
    # @regression @buyPDPPage-27 @automated
    # Scenario: Buy Property Detail Page - clicking the property card should navigate to PDP Page for More Projects Section\
    #     When I click on the "about Builder" tab on the header
    #     When I navigate to the "similar Projects Section"
    #     And I click on the "first Card"
    #     Then I should navigate to "property details" page

    # //---------------------------------------------------------------------------------------------------------------------------------------------------------
    @regression @buyPDPPage-28 @automated
    Scenario: Buy Property Detail Page - Get Quote Form
        When I click on the "introduction" tab on the header
        When I fill "data" on the "name Input Field" on the "form"
        And I fill "random number" on the "number Input Field" on the "form"
        And I fill "random email" on the "email Input Field" on the "form"
        And I check the "I accept Terms and Conditions" on the "form"
        And I check the "homeloans checkbox" on the "form"
        And I click on the "Get Quote Button"
        Then I should see the "OTP Modal" on the "page"

    #  //-------------------------------------------------------------------------------------------------------------------------------------------------------------
    @regression @buyPDPPage-29 @automated
    Scenario: Buy Property Detail Page - Get Quote Form to Arrange Site Visit Form
        When I click on the "introduction" tab on the header 
        And I click on the "arrange Visit Site"
        Then I should see the "schdedule Tour Form" on the "page"
        When I fill "data" on the "name Input Field" on the "form"
        And I fill "random number" on the "number Input Field" on the "form"
        And I fill "random email" on the "email Input Field" on the "form"
        And I select "first date" from "date field" on the "image modal"
        And I select "time" from "choose time select field" on the "image modal"
        And I check the "I accept Terms and Conditions" on the "image modal"
        And I check the "homeloans checkbox" on the "image modal"
        And I click on the "arrange Visit" on the "image modal"
        Then I should see the "OTP Modal" on the "page"

   



