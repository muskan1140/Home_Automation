import {Given,When,Then} from "@badeball/cypress-cucumber-preprocessor";
import GenericActions from "../../utilities/genericActions";
import WebText from "../../helpers/webText";
import locators from "../../pages/Locators.json";
import WebButton from "../../helpers/webButton";

const actions = new GenericActions();
const webText = new WebText();
const webButton = new WebButton;

Then('I should navigate to {string} page',(text)=>{
    actions.getTitle(text)
});

When('I click on the {string}',(element)=>{
    webButton.focusClick(locators[element])
});

When('I hover over {string} on the {string}',(element,text)=>{
    actions.hover(locators[element],text)
})

Then('I should see the {string} on the {string}',(element,text) => {
    webText.shouldBeVisible(locators[element],text)
});

When('I click on the {string} tab on the header',(element)=>{
    webButton.click(locators[element])
});

Then('I click on the {string} on the {string}',(element,text)=>{
    webButton.click(locators[element],text)
});

When('I check the {string} on the {string}',(element,text)=>{
    webButton.click(locators[element],text)
});

Then('I click on the {string} star on the {string} question',(text,element)=>{
   webButton.click(locators[element],text)
});

