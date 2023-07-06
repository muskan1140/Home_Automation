import {Given,When,Then} from "@badeball/cypress-cucumber-preprocessor";
import GenericActions from "../../utilities/genericActions";
import Urls from "../../Urls/urls.json";
import WebText from "../../helpers/webText";
import locators from "../../pages/Locators.json";
import WebButton from "../../helpers/webButton";
import WebElement from "../../helpers/webElement";
import WebTextBox from "../../helpers/webTextBox";
import WebSelectBox from "../../helpers/webSelectBox";

const actions = new GenericActions();
const webText = new WebText();
const webButton = new WebButton();
const webElement = new WebElement();
const webTextBox = new WebTextBox();
const webSelectBox = new WebSelectBox();


Given('I am on the {string} page',(url)=>{
    actions.visit(Urls[url])
});

When('I click on {string} on {string}', (string,element) => {
    const locator =locators[element].toString();
    const str = locator.replace("city",string)
    webButton.focusClick(str)
});

Then('I should see the red {string}',(element)=>{
    webText.shouldBeVisible(locators[element])
});

Then('I should not see the {string} on the page', (element) => {
    webElement.elementIsPresent(locators[element])
});

When('I fill {string} on the {string} on the {string}', (text,element) => {
    if (text == 'data'){
    webTextBox.typeText(locators[element],text)
    }
        
    else if(text == 'random number') {
        webTextBox.typeText(locators[element], actions.generateMobileNumber(text))   
    }
    else if(text == 'random email') {
        webTextBox.typeText(locators[element], actions.generateEmailAddress(text))
    }
});

Then('I select {string} from {string} on the {string}',(text,element)=>{
    if(text == 'first date'){
    webButton.click(locators[element])
    }else if (text=='time'){
    webSelectBox.selectDropDownUsingText(locators[element], '01:00 pm')
    }
});

When ('I navigate to the {string}', (element) => {
    cy.scrollTo('center',{force:true})
    webText.scrollIntoView(locators[element])
});

Then('I should see the {string}',(element)=>{
    webText.shouldBeVisible(locators[element])
});

Then('I click on the {string} on you Know {string}',(string,element) =>{
    const locator =locators[element].toString();
    const str = locator.replace("userType",string)
    webButton.focusClick(str)
})

Then('I fill {string} on the name input field',(element)=>{
   webTextBox.typeText(locators[element],"Anamika Dogra")
});

When('I click on the {string} on the {string} section',(string,element)=>{
    const locator =locators[element].toString();
    const str = locator.replace("tab",string)
    webButton.focusClick(str)
});






