const { Given, When, Then } = require("@cucumber/cucumber");
const { expect } = require("@playwright/test");

const emailSelector = "//input[@name='email']";
const passwordSelector = "//input[@name='password']";
const loginBtnSelector = "//input[@value='Login']";

Given("the user has navigated to login page", async function () {
  console.log("Navigated to Login page");
  await page.goto("http://localhost:3000/");
  // await page.pause();
});

When("user login with following credentials", async function (dataTable) {
  const inputData = dataTable.hashes();

  await page.fill(emailSelector, inputData[0].email);
  await page.fill(passwordSelector, inputData[0].password);

  await page.click(loginBtnSelector);
});

// For valid credentials
Then("user should be navigated to Contact Fox page", async function () {
  const logoutBtn = "//span[@class='hide-sm']";
  const locator = page.locator(logoutBtn);
  await expect(locator).toBeVisible();

  console.log("Navigated to Contact Fox page");
});

// For invalid credential
Then("error message {string} should be shown", async function (alertMessage) {
  const alertMsgSelector = "//div[@class='container']/div[1]";
  await expect(page.locator(alertMsgSelector)).toContainText(alertMessage);
  console.log("Invalid credentials");
});
