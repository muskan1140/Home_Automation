import {Given,When,Then} from "@badeball/cypress-cucumber-preprocessor"
import WebButton from "../../helpers/webButton";
import locators from "../../pages/Locators.json";
import WebText from "../../helpers/webText";
import WebElement from "../../helpers/webElement";

const webButton = new WebButton();
const webText = new WebText();
const webElement = new WebElement();

When('I click again on the {string} button on the {string}', (button,element) => {
    let locator=`${locators[element]}:contains("${button}") span:first`;
    webButton.focusClick(locator)
});

When('{string} expanded',(element)=>{
  webText.shouldBeVisible(locators[element])
});

Then('the {string} should be visible',(element)=>{
  webText.shouldBeVisible(locators[element])
});

Then('{string} closed',(element)=>{
  webElement.elementIsPresent(locators[element])
});

When('I should see the {string} on the {string} list',(text,element)=>{
  webText.shouldBeVisible(locators[element],text)
});

When('I click on the {string} on the {string} list',(item,element)=>{
  let locator=`${locators[element]}:contains("${item}") span:first`;
  webButton.click(locator)
});