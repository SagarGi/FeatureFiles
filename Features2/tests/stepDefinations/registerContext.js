const { Given, When, Then, setDefaultTimeout } = require("@cucumber/cucumber");
const { expect } = require("@playwright/test");
// import { setDefaultTimeout } from "cucumber";
// const { setDefaultTimeout } = require("@cucumber/cucumber");
// config = { expect: { timeout: 10000 } };
setDefaultTimeout(60 * 1000);
const registerSelector = 'a[href="/register"]';
const nameSelector = 'input[name="name"]';
const emailSelector = 'input[name="email"]';
const passwordSelector = 'input[name="password"]';
const confirmSelector = 'input[name="password2"]';
const logoutSelector = 'span[class="hide-sm"]';
const registerButtomSelector = 'input[value="Register"]';

Given("the user has clicked Register button", async function () {
  await page.click(registerSelector);
});

Given(
  "the user has been navigated to the Registration page",
  async function () {
    console.log("user  has navigated to the  Registration dashboard");
    await page.goto("http://localhost:3000/register");
  }
);

When(
  "the user enters the name with {string} and email with {string} and password with {string} and confirm password with {string}",
  async function (name, email, password, confirmpassword) {
    console.log("User Has navigated to Registration page");
    await page.type(nameSelector, name);
    await page.type(emailSelector, email);
    await page.type(passwordSelector, password);
    await page.type(confirmSelector, confirmpassword);
    await page.click(registerButtomSelector);
  }
);

Then(
  "the user will be registered and navigated to the homepage",
  async function () {
    const logoutLocator = page.locator(logoutSelector);
    await expect(logoutLocator).toBeVisible();
    console.log("The user entered to the Homepage");
    await page.pause();
  }
);
