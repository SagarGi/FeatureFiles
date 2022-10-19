const { Given, When, Then } = require("@cucumber/cucumber");
const { expect } = require("@playwright/test");

const emailSelector = 'input[name="email"]';
const passwordSelector = 'input[name="password"]';
const LoginSelector = 'input[type="submit"]';
const logoutSelector = 'span[class="hide-sm"]';

Given("the user has navigated to the login page", async function () {
  console.log("The user has navigated to the login page");
  await page.goto("http://localhost:3000");
  //await page.pause();
});

When(
  "the user enters valid {string} and {string}",
  async function (validemail, validpassword) {
    await page.type(emailSelector, validemail);
    await page.type(passwordSelector, validpassword);
    await page.click(LoginSelector);
  }
);

Then("the home page should be displayed on the webUI", async function () {
  const logoutLocator = page.locator(logoutSelector);
  await expect(logoutLocator).toBeVisible();
  console.log("The user is navigated to the home page");
  await page.pause();
});
