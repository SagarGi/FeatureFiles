const { Given, When, Then } = require("@cucumber/cucumber");
const { expect } = require("@playwright/test");

const emailSelector = "//div/input[@name='email']";
const passwordSelector = "//div/input[@name='password']";
const loginSelector = 'input[value="Login"]';
const logoutSelector = 'a[href="#!"]';
const messageSelector = "";

Given("a user  has navigated to the login dashboard", async function () {
  // Write code here that turns the phrase above into concrete actions
  console.log("user  has navigated to the login dashboard");

  await page.goto("http://localhost:3000");
  // await page.pause();
});

When(
  "the user enters the valid credentials with email {string} and Password {string}",
  async function (email, password) {
    // console.log("Enter the Valid Credentials");
    // const requiredEmail = "abc@gmail.com";
    await page.type(emailSelector, email);
    await page.type(passwordSelector, password);
    await page.click(loginSelector);
  }
);

Then("the user will be naviaged to the homepage", async function () {
  // Write code here that turns the phrase above into concrete actions
  const logoutLocator = page.locator(logoutSelector);
  await expect(logoutLocator).toBeVisible();
  console.log("The user entered to the Homepage");
  await page.pause();
});

// When(
//   "the user enters the invalid credentials with email {string} and Password {string}",
//   async function (email, password) {
//     // Write code here that turns the phrase above into concrete actions
//     await page.type(emailSelector, email);
//     await page.type(passwordSelector, password);
//     await page.click(loginSelector);
//   }
// );

// Then('the user should be given invalid credentials {string}',async function (message) {
//   // Write code here that turns the phrase above into concrete actions
//   const messageLocator = page.locator(messageLocator);
//   await expect(logoutLocator).toBeVisible();
//   console.log("The user entered to the Homepage");
//   await page.pause();
// });
