const { Given, When, Then, setDefaultTimeout } = require("@cucumber/cucumber");
const { expect } = require("@playwright/test");
const { RegisterPage } = require("../pageObject/RegisterPage");
const { HomePage } = require("../pageObject/HomePage");

const registerPage = new RegisterPage();
const homePage = new HomePage();

setDefaultTimeout(60 * 1000);

Given("the user has clicked Register button", async function () {
  await registerPage.clickRegisterButton();
});

Given(
  "the user has been navigated to the Registration page",
  async function () {
    await registerPage.navigateToRegisterPage();
  }
);

When(
  "the user enters the name with {string} and email with {string} and password with {string} and confirm password with {string}",
  async function (name, email, password, confirmpassword) {
    await registerPage.register(name, email, password, confirmpassword);
  }
);

Then(
  "the user will be registered and navigated to the homepage",
  async function () {
    const logoutLocator = page.locator(homePage.logoutSelector);
    await expect(logoutLocator).toBeVisible();
    console.log("The user entered to the Homepage");
  }
);

Given("the user has clicked logout button", async function () {
  await page.click(homePage.logoutSelector);
});

Then(
  "the user will hovered with the message {string}",
  async function (message) {
    const messageLocator = page.locator(registerPage.messageSelector);
    await expect(messageLocator).toBeVisible();
    console.log("The user entered to the Homepage");
  }
);
