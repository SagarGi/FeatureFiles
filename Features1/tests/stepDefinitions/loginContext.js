const { Given, When, Then } = require("@cucumber/cucumber");
const { expect } = require("@playwright/test");
const { LoginPage } = require("../pageObjects/LoginPage");

const loginPage = new LoginPage();

Given("the user has navigated to the login page", async function () {
  await loginPage.navigate();
});

When(
  "the user login with email {string} and password {string}",
  async function (email, password) {
    await loginPage.enterCredential(email, password);
  }
);

Then("the home page should be displayed on the webUI", async function () {
  const logoutLocator = page.locator(loginPage.logoutSelector);
  await expect(logoutLocator).toBeVisible();
  console.log("The user is navigated to the home page");
});

Then(
  "the {string} message should be pop in the login page",
  async function (error) {
    const popupLocator = page.locator(loginPage.popupSelector);
    await expect(popupLocator).toHaveText(error);
  }
);
