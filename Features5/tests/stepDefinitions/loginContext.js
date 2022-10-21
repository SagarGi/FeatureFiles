//import { Given, When, Then } from "@cucumber/cucumber";
const { Given, When, Then } = require("@cucumber/cucumber");
const { expect } = require("@playwright/test");

const emailSelector = "input[name='email']";
const passwordSelector = "input[name='password']";
const loginSelector = "input[value='Login']";
const logoutSelector = "span[class='hide-sm']";
const popoverSelector = "div[class='alert alert-danger']";

Given("user has been navigated to login page", async function () {
  console.log("user has been navigated to login page");
  await page.goto("http://localhost:3000");
});

When(
  "user enters credentials {string} and {string}",
  async function (email, password) {
    await page.type(emailSelector, email);
    await page.type(passwordSelector, password);
    await page.click(loginSelector);
  }
);

Then("user should be navigated to home page", async function () {
  const logoutLocator = page.locator(logoutSelector);
  await expect(logoutLocator).toBeVisible();
  //await page.toBeVisible(logoutSelector);
});

//invalid Scenario

Then("user should see the error message {string}", async function (message) {
  // await page.isVisible(popoverSelector);
  await expect(page.locator(popoverSelector)).toHaveText(message);
  await page.pause();
});
