import {Given,When,Then} from "@badeball/cypress-cucumber-preprocessor";
import GenericActions from "../../utilities/genericActions";
import WebText from "../../helpers/webText";
import locators from "../../pages/Locators.json";
import WebButton from "../../helpers/webButton";
import WebTextBox from "../../helpers/webTextBox";
import WebElement from "../../helpers/webElement";

const actions = new GenericActions();
const webText = new WebText();
const webButton = new WebButton;
const webTextBox = new WebTextBox();
const webElement = new WebElement();

Then('I should navigate to {string} page',(url)=>{
    actions.checkUrl(url)
});

Given('I navigate to {string} url',(url)=>{
    actions.visit(url)
});

When('I click on the {string}',(element)=>{
    webButton.focusClick(locators[element])
});

When('I hover over {string} on the {string}',(element,text)=>{
    actions.hover(locators[element],text)
});


When('I click on {string} on {string}', (string,element) => {
    const locator =locators[element].toString();
    const str = locator.replace("city",string)
    webButton.focusClick(str)
});

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

When('I fill {string} on the {string}',(text,element)=>[
    webTextBox.typeText(locators[element],text)
]);

Then('I should see image,{string} and {string} on the {string}',(element,text)=>{
    webText.shouldBeVisible(locators[element],text)
});

Then('I should not see the {string} on the page', (element) => {
    webElement.elementIsPresent(locators[element])
});

Then('The {string} in city should have selected in search area', (element) => {
    webElement.shouldBeVisible(locators[element])
});

Then('I should see the {string} on {string}', (element,text) => {
    if (text== "deals of the week section") {
    let locator = `${locators[element]}:eq()`;
    webText.shouldBeVisible(locator)
    }
    else if(text=="discounted deals section") {
        let locator = `${locators[element]}:eq(12)`;
        webText.shouldBeVisible(locator) 
    }
})

When('I clicks on the {string} on {string}', (element,text) => {
    if (text== "deals of the week section") {
    let locator = `${locators[element]}:eq()`;
    webButton.focusClick(locator)
    }
    else if (text== "discounted deals section") {
    let locator = `${locators[element]}:eq(6)`;
    webButton.focusClick(locator)
    }
    else if(text== "top builder section") {
        let locator = `${locators[element]}:eq(3)`;
        webButton.focusClick(locator)
    }
    else if(text=="meet our customer section") {
        let locator = `${locators[element]}:eq(4)`;
        webButton.focusClick(locator)
    }
    else if(text=="top article section") {
        let locator = `${locators[element]}:last()`;
        webButton.focusClick(locator)
    }
});

When('I click on the {string} button on the {string}', (button,element) => {
    let locator=`${locators[element]}:contains("${button}") span:first`;
    webButton.focusClick(locator)
});

