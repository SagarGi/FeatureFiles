const { Given, When, Then } = require("@cucumber/cucumber");
const { expect } = require("@playwright/test");

const emailSelector = 'input[name="email"]';
const passwordSelector = 'input[name="password"]';
const LoginSelector = 'input[type="submit"]';
const logoutSelector = 'span[class="hide-sm"]';
const popupSelector = 'div[class="alert alert-danger"]';

Given("the user has navigated to the login page", async function () {
  console.log("The user has navigated to the login page");
  await page.goto("http://localhost:3000");
  //await page.pause();
});

When(
  "the user enters {string} and {string}",
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

Then(
  "the {string} message should be pop in the login page",
  async function (error) {
    const popupLocator = page.locator(popupSelector);
    await expect(popupLocator).toHaveText(error);
    await page.pause();
  }
);
