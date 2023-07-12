import {Given,When,Then} from "@badeball/cypress-cucumber-preprocessor";
import WebText from "../../helpers/webText";
import WebSelectBox from "../../helpers/webSelectBox";
import locators from "../../pages/Locators.json";
import WebButton from "../../helpers/webButton";
import WebElement from "../../helpers/webElement";

const webText = new WebText();
const webSelectBox =  new WebSelectBox();
const webButton = new WebButton();
const webElement = new WebElement();

Then ('I should see the {string} of the property should be greater than zero'),(element)=>{
    webText.shouldBeVisible(locators[element])
}

When('I select {string} from {string} select field', (text,element) => {
    webSelectBox.selectDropDownUsingText(locators[element], text)
});

When('I click on the {string} on {string}', (string,element) => {
    const locator = locators[element].toString();
    const str = locator.replace("element",string)
    webElement.shouldBeVisible(str)
    webButton.click(locators[element], string)
})

When('{string} tab should be closed',(element) => {
    webText.shouldBeVisible(locators[element])
})