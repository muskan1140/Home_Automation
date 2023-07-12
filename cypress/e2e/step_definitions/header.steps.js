import {Given,When,Then} from "@badeball/cypress-cucumber-preprocessor";
import WebText from "../../helpers/webText";
import locators from "../../pages/Locators.json";
import WebButton from "../../helpers/webButton";

const webText = new WebText();
const webButton = new WebButton();

Then ('I should see the {string} under {string} button',(element,text)=>{
     webText.shouldBeVisible(locators[element],text)
});

Then('I scroll to the {string} to see the footer',()=>{
     cy.scrollTo('center',{force:true})
});

When('I select {string} on the {string}',(text,element)=>{
    webButton.click(locators[element],text)
});

When('I select {string} city on the {string}',(cityName,element)=>{
     let locator=`${locators[element]}:contains("${cityName}"):last()`;
     webButton.focusClick(locator)
});
    
