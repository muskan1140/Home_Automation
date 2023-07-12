import {Given,When,Then} from "@badeball/cypress-cucumber-preprocessor";
import WebText from "../../helpers/webText";
import locators from "../../pages/Locators.json"

const webText = new WebText();

Then('I should see the {string} along with the heading',(element)=>{
    webText.shouldBeVisible(locators[element])
});

