//import { Given, When, Then } from "@cucumber/cucumber";
const { Given, When, Then } = require("@cucumber/cucumber");

const emailSelector = "input[name='email']";
const passwordSelector = "input[name='password']";
const loginSelector = "input[value='Login']";
const logoutSelector = "span[class='hide-sm']";

Given("user has been navigated to login page", async function () {
  console.log("user has been navigated to login page");
  await page.goto("http://localhost:3000");
});

When(
  "user logs in with valid {string} and {string}",
  async function (email, password) {
    await page.type(emailSelector, email);
    await page.type(passwordSelector, password);
    await page.click(loginSelector);
  }
);

Then("user should be navigated to home page", async function () {
  await page.isVisible(logoutSelector);
});
