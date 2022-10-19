const { Given, When, Then } = require("@cucumber/cucumber");

const nameSelector = "input[name='name']";
const emailSelector = "input[name='email']";
const passwordSelector = "input[name='password']";
const confirmPasswordSelector = "input[name='password2']";
const navRegisterSelector = "div [href='/register']";
const registerSelector = "input[value='Register']";
const logoutSelector = "span[class='hide-sm']";

Given("user has been navigated to registration page", async function () {
  console.log("navigated to registration page");
  await page.goto("http://localhost:3000");
  await page.click(navRegisterSelector);
});

When("user enters following valid credentials:", async function (dataTable) {
  console.log("enters valid credentials");
  await page.type(nameSelector, dataTable.name);
  await page.type(emailSelector, dataTable.email);
  await page.type(passwordSelector, dataTable.password);
  await page.type(confirmPasswordSelector, dataTable.confirmPassword);
  await page.click(registerSelector);
});

Then("user should be navigated to the homepage", async function () {
  console.log("navigated to homepage");
  await page.isVisible(logoutSelector);
});
