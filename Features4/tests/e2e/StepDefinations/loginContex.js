const {Given,When,Then} = require("@cucumber/cucumber");
const {expect} = require("@playwright/test");
const { LoginPage } = require("../PageObject/LoginPage");

const loginPage= new LoginPage();

Given("the user has navigated to the login page", async function () {
    console.log("The user has navigated to the login page:");
    await loginPage.navigateToHomePage();
});

When('the user enters email address as {string} and password as {string}',async function (email, password) {
    await loginPage.login(email, password);
});

Then('the home page should be displayed on the webUI',async function () {
    const logoutLocator =await page.locator(loginPage.selectorLogout);
    await expect(logoutLocator).toBeVisible();
});

//For InValid crdentials
Then('the error message {string} should be popup',async function (message){
    await loginPage.invalidCredentails(message);
   
});
