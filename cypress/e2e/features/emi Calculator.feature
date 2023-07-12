Feature: Home Loan Emi Calculator Page

    As a tester, I want to test the home loan emi calculator page of homebazaar application

    Background:
        Given I am on the "homeloanemicalculator" page

    @regresssion @homeLoanEMICalculatorPage-01 @automated
    Scenario: Home Loan EMI Calculator Page - checking the visibility of the Home Loan EMI calculator heading
        Then I should see the "header" on the "page"
        And I should see the "Home Loan EMI Calculator ! heading" on the "page"

    # //-----------------------------------------------------------------------------------------------------------------------------

    @regresssion @homeLoanEMICalculatorPage-02 @automated
    Scenario Outline: Home Loan EMI Calculator Page  - emi calculator functionality for <loanAmount>
        When I fill "<loanAmount>" on the "Loan Amount input field"
        And I fill "<year>" on the "year input field"
        And I fill "<interestRate>" on the "interest rate input field"
        Then I should see the "Monthly Home Loan EMI heading" on the "page"
        And I should see the "<monthlyHomeLoanEmi>" on the "Monthly Home Loan EMI" section
        And I should see the "Principal Amount" on the "page"
        And I should see the "<principalAmount>" on the "Principal Amount" section
        And I should see the "Interest Amount" on the "page"
        And I should see the "<interestAmount>" on the "Interest Amount" section
        And I should see the "Total Amount Payable" on the "page"
        And I should see the "<totalAmountPayable>" on the "Total Amount Payable" section

        Examples:
            | loanAmount | year | interestRate | monthlyHomeLoanEmi | principalAmount | interestAmount | totalAmountPayable |
            | 2000000    | 10   | 7.2          | 23,428             | 20,00,000       | 8,11,405       | 28,11,405          |
            | 2500000    | 7    | 12           | 44,132             | 25,00,000       | 12,07,074      | 37,07,074          |
            | 3000000    | 8    | 12           | 48,759             | 30,00,000       | 16,80,818      | 46,80,818          |

    # //-------------------------------------------------------------------------------------------------------------------------------

    @regresssion @homeLoanEMICalculatorPage-03 @automated
    Scenario: Home Loan EMI Calculator Page - checking the visibility of the graph on Home Loan EMI calculator
        Then I should see the "circular Graph" on the "page"

    # //----------------------------------------------------------------------------------------------------------------------------------

     @regresssion @homeLoanEMICalculatorPage-04 @automated
    Scenario Outline: Home Loan EMI Calculator Page  - checking the opening and closing of "<FAQquestion>" tab
        When I click on the "<FAQquestion>" tab on the page
        Then "<FAQquestion>" tab should be open on the page
        And I should see the answer on the "<FAQquestion>" tab on the page
        And I click on the "<FAQquestion>" again
        And "<FAQquestion>" tab should be closed

        Examples:
            | FAQquestion                                                     |
            | What does an EMI mean?                                          |
            | What are the benefits of using an EMI calculator for home loan? |
            | What is Home Loan and how does it works?                        |
            | How do I apply for a home loan ?                                |


