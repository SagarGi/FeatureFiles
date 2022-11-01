const { Given, When, Then } = require("@cucumber/cucumber");
const { expect } = require("@playwright/test");
const { LoginPage } = require("../pageObjects/LoginPage");
const { RegisterPage } = require("../pageObjects/RegisterPage");

const registerPage = new RegisterPage();
const loginPage = new LoginPage();

Given("the user has navigated to the register page", async function () {
  await loginPage.navigate();
  await registerPage.navigate();
});

When("the user enters following user information", async function (dataTable) {
  await registerPage.userInformationEntered(dataTable);
});

Then(
  "error message {string} should pop up on the webUI",
  async function (error) {
    const errorMsgLocator = page.locator(registerPage.errorMsgSelector);
    await expect(errorMsgLocator).toHaveText(error);
  }
);

Given(
  "the user has been registered with following user information",
  async function (dataTable) {
    await registerPage.userInformationEntered(dataTable);
  }
);

Given("the home page has been displayed on the webUI", async function () {
  const logoutLocator = page.locator(registerPage.logoutSelector);
  await expect(logoutLocator).toBeVisible();
});

Given("user has logged out", async function () {
  await registerPage.userLoggedOut();
});
