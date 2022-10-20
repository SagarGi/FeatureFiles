const { Given, When, Then } = require("@cucumber/cucumber");

const registerSelector = 'a[href="/register"]';
const nameSelector = 'input[name="name"]';
const emailSelector = 'input[name="email"]';
const passwordSelector = 'input[name="password"]';
const confirmPasswordSelector = 'input[name="password2"]';

Given("the user has navigated to the register page", async function () {
  await page.goto("http://localhost:3000");
  await page.click(registerSelector);
});

When(
  "the user enters following contact information",
  async function (dataTable) {
    await page.type(nameSelector, name);
    await page.type(emailSelector, email);
    await page.type(passwordSelector, password);
    await page.type(confirmPasswordSelector, confirmpassword);
  }
);

// Then('error message {string} should pop up on the webUI', function (string) {

// });
