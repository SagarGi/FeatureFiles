const {Given,When,Then} = require("@cucumber/cucumber");
const {expect} =require("@playwright/test");

const selectorEmail = "input[name='email']";
const selectorPassword= "input[name='password']";
const selectorLoginbtn= "input[type='submit']";
const selectorLogout ="span[class ='hide-sm']";
const selectorInvalidcre = "div[class = 'alert alert-danger' ]"

Given("the user has navigated to the login page", async function () {
    console.log("The user has navigated to the login page:");
    await page.goto("http://localhost:3000/");
});

When('the user enters email address as {string} and password as {string}',async function (email, password) {
    await page.type(selectorEmail,email);
    await page.type(selectorPassword,password);
    await page.click(selectorLoginbtn);
});

Then('the home page should be displayed on the webUI',async function () {
    const logoutLocator= page.locator(selectorLogout);
    await expect(logoutLocator).toBeVisible();
    console.log("THe user is navigated to the home page:");
    await page.close();
});
//For Valid crdentials
Then('the error message {string} should be popup',async function (message) {
   const errorMessage = page.locator(selectorInvalidcre);
   const [innertext] = await errorMessage.allInnerTexts();
   await expect(errorMessage).toBeVisible();
   console.log("The user entered to the loginpage:" );
   if(innertext.trim() !== errorMessage.trim()){
    throw new Error("message not found");
   }
  });
