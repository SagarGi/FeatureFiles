
const {Given,When,Then} = require("@cucumber/cucumber");
const selectorEmail = "input[name='email']";
const selectorPassword= "input[name='password']";
const selectorLoginbtn= "input[type='submit']";
const selectorLogout ="span[class ='hide-sm']";

Given("the user has navigated to the login page", async function () {
    console.log("The user has navigated to the login page");
    await page.goto("http://localhost:3000/");
});
When('the user enters {string} and {string}',async function (email, password) {
    await page.type(selectorEmail,email);
    await page.type(selectorPassword,password);
    await page.click(selectorLoginbtn);
});
Then('the home page should be displayed on the webUI',async function () {
    const logoutLocator= page.locator(selectorLogout);
    await expect(logoutLocator).toVisible();
    console.log("THe user is navigated to the home page:");
    await page.close();
});