import {Given,When,Then} from "@badeball/cypress-cucumber-preprocessor";
import locators from "../../pages/Locators.json";
import WebButton from "../../helpers/webButton";
import WebText from "../../helpers/webText";

const webButton =  new WebButton();
const webText = new WebText();

When('I click on {string} city on the {string}', (string,element) => {
   webButton.click(locators[element]);
   let locator=`${locators[element]} ul li:contains("${string}"):last`;
   webButton.focusClick(locator)
});

Then('The Discounted {string} should have the {string}',(text,element)=>{
   webText.shouldBeVisible(locators[element],text)
});

Then('I should see the count of the {string} should be {string}',(element)=>{
   webText.shouldBeVisible(locators[element])
})

