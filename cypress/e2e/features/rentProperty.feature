Feature: Rent A Property Page

    As a tester, I want to the test the rent a property page of the homebazaar application

    @regression @sanity @RentAPropertyPage-01 @automated
    Scenario:Rent A Property Page - "Rental Property Search Got You Down?" section
        Given I am on the "rentaproperty" page
        Then I should see the "header" on the "page"
        And I should see the "Rental Property Search Got You Down? heading" on the "page"
        And I should see the "image" on the "page"

    # //--------------------------------------------------------------------------------------------------

    @regression @sanity @RentAPropertyPage-02 @automated
    Scenario: Rent A Property Page - "Rent A Property Page" section
        Given I am on the "rentaproperty" page
        Then I should see the "rent a property page" on the "section"
        And I should see the "Now Renting Made Simple heading" on the "rent a property section"
        And I should see the "subheading" on the "rent a property section"
        And I should see image,"search Properties Heading" and "description" on the "rent a property section"
        And I should see image,"find a Property Heading" and "description" on the "rent a property section"
        And I should see image,"schedule Tours Heading" and "description" on the "rent a property section"
        And I should see image,"possession Heading" and "description" on the "rent a property section"
        And I should see image,"sign an Agreement Heading" and "description" on the "rent a property section"
        And I should see image,"negotiation Heading" and "description" on the "rent a property section"
        And I should see image,"pay Rent Online Heading" and "description" on the "rent a property section"
        And I should see image,"trust & Safety Heading" and "description" on the "rent a property section"

    # //---------------------------------------------------------------------------------------------------------

    @regression @sanity @RentAPropertyPage-03 @automated
    Scenario: Rent A Property Page - "Why choose HomeBazaar.com" section
        Given I am on the "rentaproperty" page
        Then I should see the "why choose homebazaar Heading" on the "why choose homebazaar section"
        # And I should see the "subheading" on the "why choose homebazaar section"
        And I should see the "No Brokerage Text" on the "why choose homebazaar section"
        And I should see the "Verified Listings Text" on the "why choose homebazaar section"
        And I should see the "Instant Possession Text" on the "why choose homebazaar section"
        And I should see the "End-to-End Customer Assistance Text" on the "why choose homebazaar section"
        And I should see the "Documentation Text" on the "why choose homebazaar section"
        And I should see the "Legal Assistance Text" on the "why choose homebazaar section"

    # //------------------------------------------------------------------------------------------------------------

    
    @regression @sanity @RentAPropertyPage-04 @automated
    Scenario: Rent A Property Page - "Unique Offerings at HomeBazaar.com" section
        Given I am on the "rentaproperty" page
        Then I should see the "unique Offering Section" on the "page"
        And I should see the "Unique Offerings at HomeBazaar.com Heading" on the "unique offering section"
        And I should see the "subheading" on the "unique offering section"
        And I should see image,"street View" and "description" on the "unique offering section"
        And I should see image,"360 View" and "description" on the "unique offering section"
        And I should see image,"photographs" and "description" on the "unique offering section"
        And I should see image,"site Visit Assistance" and "description" on the "unique offering section"
        And I should see image,"tour Via Video Chat" and "description" on the "unique offering section"




