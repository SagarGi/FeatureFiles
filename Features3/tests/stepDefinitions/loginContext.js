const { Given, When, Then } = require("@cucumber/cucumber");
const { expect } = require("@playwright/test");

Given("the user has browsed to login page", async function () {
  console.log("Navigated to Login page");
  await page.goto("http://localhost:3000/");
  // await page.pause();
});
When(
  "user enters correct credentials with email {string} and password {string}",
  async function (email, password) {
    const emailSelector = "//input[@name='email']";
    const passwordSelector = "//input[@name='password']";
    const loginBtnSelector = "//input[@value='Login']";

    await page.fill(emailSelector, email);
    await page.fill(passwordSelector, password);
    await page.click(loginBtnSelector);
    // await page.pause();
  }
);

Then("user should be navigated to Contact Fox page", async function () {
  const logoutBtn = "//span[@class='hide-sm']";
  // method 1
  const locator = page.locator(logoutBtn);
  await expect(locator).toBeVisible();

  // method 2
  // await expect(page.locator(logoutBtn)).toBeVisible();

  console.log("Navigated to Contact Fox page");
});
