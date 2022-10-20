const { Given, When, Then } = require("@cucumber/cucumber");
const { expect } = require("@playwright/test");

const registerSelector = 'a[href="/register"]';
const nameSelector = 'input[name="name"]';
const emailSelector = 'input[name="email"]';
const passwordSelector = 'input[name="password"]';
const confirmPasswordSelector = 'input[name="password2"]';
const registerButtonSelector = 'input[type="submit"]';
const errorMsgSelector = 'div[class="alert alert-danger"]';
const logoutSelector = 'span[class="hide-sm"]';

Given("the user has navigated to the register page", async function () {
  await page.goto("http://localhost:3000");
  await page.click(registerSelector);
});

When(
  "the user enters following user information",
  async function (dataTable) {
    const dataArray = dataTable.hashes();
    for (i = 0; i < dataArray.length; i++) {
      const individualData = dataArray[i];
      const name = individualData.name;
      const email = individualData.email;
      const password = individualData.password;
      const confirmpassword = individualData.confirmpassword;

      await page.type(nameSelector, name);
      await page.type(emailSelector, email);
      await page.type(passwordSelector, password);
      await page.type(confirmPasswordSelector, confirmpassword);
      await page.click(registerButtonSelector);
    }
  }
);
Then(
  "error message {string} should pop up on the webUI",
    async function (error) {
    const errorMsgLocator = page.locator(errorMsgSelector);
    await expect(errorMsgLocator).toHaveText(error);
  }
);

Given(
  "the user has been register with following user information",
  async function (dataTable) {
    const dataArray = dataTable.hashes();
    for (i = 0; i < dataArray.length; i++) {
      const individualData = dataArray[i];
      const name = individualData.name;
      const email = individualData.email;
      const password = individualData.password;
      const confirmpassword = individualData.confirmpassword;

      await page.type(nameSelector, name);
      await page.type(emailSelector, email);
      await page.type(passwordSelector, password);
      await page.type(confirmPasswordSelector, confirmpassword);
      await page.click(registerButtonSelector);
    }
  }
);

Given("the home page has been displayed on the webUI", async function () {
  const logoutLocator = page.locator(logoutSelector);
  await expect(logoutLocator).toBeVisible();
});

Given("user has logged out", async function () {
  await page.click(logoutSelector);
  //await page.pause();
});
