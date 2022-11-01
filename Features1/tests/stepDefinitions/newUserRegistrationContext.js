const { Given, When, Then } = require("@cucumber/cucumber");
const { expect } = require("@playwright/test");
const { LoginPage } = require("../pageObjects/LoginPage");
const { RegisterPage } = require("../pageObjects/RegisterPage");
const { HomePage } = require("../pageObjects/HomePage");

const registerPage = new RegisterPage();
const loginPage = new LoginPage();
const homePage = new HomePage();

Given("the user has navigated to the register page", async function () {
  await loginPage.navigate();
  await registerPage.navigateToRegisterPage();
});

When("the user enters following user information", async function (dataTable) {
  const dataArray = dataTable.hashes();
  for (let data of dataArray) {
    await registerPage.userInformationEntered(data);
  }
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
    const dataArray = dataTable.hashes();
    for (let data of dataArray) {
      await registerPage.userInformationEntered(data);
    }
  }
);

Given("the home page has been displayed on the webUI", async function () {
  const logoutLocator = page.locator(homePage.logoutSelector);
  await expect(logoutLocator).toBeVisible();
});

Given("user has logged out", async function () {
  await homePage.userLoggedOut();
});
