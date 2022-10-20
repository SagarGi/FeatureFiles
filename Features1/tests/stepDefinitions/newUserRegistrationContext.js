const { Given, When, Then } = require("@cucumber/cucumber");
const { expect } = require("@playwright/test");

const registerSelector = 'a[href="/register"]';
const nameSelector = 'input[name="name"]';
const emailSelector = 'input[name="email"]';
const passwordSelector = 'input[name="password"]';
const confirmPasswordSelector = 'input[name="password2"]';
const registerButtonSelector = 'input[type="submit"]';
const errorMsgSelector = 'div[class="alert alert-danger"]';

Given("the user has navigated to the register page", async function () {
  await page.goto("http://localhost:3000");
  await page.click(registerSelector);
});

When(
  "the user enters following contact information",
  async function (dataTable) {
    console.log("Haha haha");
    const dataArray = dataTable.hashes();
    console.log(dataArray);
    for (i = 0; i < dataArray.length; i++) {
      const individualData = dataArray[i];
      console.log("The individual data is: ", individualData);
      const name = individualData.name;
      const email = individualData.email;
      const password = individualData.password;
      const confirmpassword = individualData.confirmpassword;

      await page.type(nameSelector, name);
      await page.type(emailSelector, email);
      await page.type(passwordSelector, password);
      await page.type(confirmPasswordSelector, confirmpassword);
      await page.click(registerButtonSelector);

      //await page.pause();
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
