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

    # //------------------------------------------------------------------------------------------------------------------

    @regression @rentPDPPage-02 @automated
    Scenario: Rent Property Detail Page - verification of property heading
        Then I should see the "project Name" on the "pdp page heading"
        When I hover over "project Name" on the "pdp page heading"
        And I should see the "project Location" on the "pdp page heading"
        And I should see the "property Rating" on the "pdp page heading"
        And I should see the "configuration" on the "pdp page heading"
        And I should see the "starting Price" on the "pdp page heading"
        And I should see the "carpet Area" on the "pdp page heading"

    # //---------------------------------------------------------------------------------------------------------------------

    @regression @rentPDPPage-03 @automated
    Scenario: Rent Property Detail Page - checking the functionality of share icon
        When I click on the "share Icon"
        Then I should see the "social Media Icon Modal" on the "page"

    # //---------------------------------------------------------------------------------------------------------------------

    @regression @rentPDPPage-04 @automated
    Scenario: Rent Property Detail Page - checking the functionality of shortlist property icon
        When I click on the "shortlist Property Icon"
        Then I should see the red "shortlist Property Icon" on the "page"

    # //-----------------------------------------------------------------------------------------------------------------------

     @regression @rentPDPPage-04 @automated
    Scenario: Resale Property Detail Page - functionality of items on the hero image
        Then I should see the "heroImage" on the "image"
        And I should see the "livability Rating" on the "image"
        When I hover over "livability Rating" on the "image"

    # //------------------------------------------------------------------------------------------------------------------------


    @regression @rentPDPPage-06 @automated
    Scenario: Rent Property Detail Page - functionality of images button which navigate to arrange site visit form on the hero image
        Then I should see the "heroImage" on the "image"
        And I click on the "image Text" on the "hero image"
        Then I should see the "image Modal" on the "page"
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

    # //--------------------------------------------------------------------------------------------------------------------------

    @regression @resalePDPPage-08 @automated
    Scenario: Rent Property Detail Page - checking the functionality of "Read More" button on the introduction section
        When I click on the "about Property Tab" on the "header"
        And I click on the "read more" on the "introduction section"
        Then I should see the "complete Description" on the "introduction section"
        When I click on the "read less" on the "introduction section"
        Then I should not see the "complete Description" on the page

    # //------------------------------------------------------------------------------------------------------------------------------


    @regression @resalePDPPage-9 @automated
    Scenario Outline: Rent Property Detail Page- FAQ section for <FAQquestion>
        When I click on the "FAQ" tab on the header
        And I click on the "readMore" on the "FAQ section"
        When I click on the "<FAQquestion>" on the "page"
        Then "<FAQquestion>" tab should be open on the page
        And I should see the answer on the "<FAQquestion>" tab on the page
        And I click on the "<FAQquestion>" again
        And "<FAQquestion>" tab should be closed

        Examples:
            | FAQquestion                                         |
            | Is Bhagwati Eleganza A Good For Investment?         |
            | How many floors are there in Bhagwati Eleganza?     |
            | What is the address of Bhagwati Eleganza?           |
            | What is  Bhagwati Eleganza 3 BHK Price?             |
            | What is the Possession Status of Bhagwati Eleganza? |
            | How to check Bhagwati Eleganza Sample Flat?         |

    # //----------------------------------------------------------------------------------------------------------------------

    @automated @builderPage-10 @automated
    Scenario: Resale Property Detail Page - Get Quote Form
        When I click on the "FAQ" on the "header"
        When I fill "data" on the "name Input Field" on the "form"
        And I fill "random number" on the "number Input Field" on the "form"
        And I fill "random email" on the "email Input Field" on the "form"
        And I check the "I accept Terms and Conditions" on the "form"
        And I check the "homeloans checkbox" on the "form"
        And I click on the "Get Quote Button"
        Then I should see the "OTP Modal" on the "page"

    # //-----------------------------------------------------------------------------------------------------------------------

     @automated @builderPage-25 @automated
    Scenario: Resale Property Detail Page - Get Quote Form to Arrange Site Visit Form
        When I click on the "FAQ" on the "header"
        Then I should see the "schdedule Tour Form" on the "page"
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


