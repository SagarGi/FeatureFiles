const { Given, When, Then } = require("@cucumber/cucumber");
const { expect } = require("@playwright/test");

const nameSelector = "input[name='name']";
const emailSelector = "input[name='email']";
const passwordSelector = "input[name='password']";
const confirmPasswordSelector = "input[name='password2']";
const navRegisterSelector = "div [href='/register']";
const registerSelector = "input[value='Register']";
const loginSelector = "input[value='Login']";
const logoutSelector = "span[class='hide-sm']";
const popUpSelector = "div[class='alert alert-danger']";

Given("user has been navigated to registration page", async function () {
  console.log("navigated to registration page");
  await page.goto("http://localhost:3000");
  await page.click(navRegisterSelector);
});

When(
  "the user registers with following credentials:",
  async function (dataTable) {
    console.log("enters valid credentials");
    const myData = dataTable.hashes(); //it gives an array
    for (let i = 0; i < myData.length; i++) {
      //applying loop to print values of object inside an array
      const name = myData[i].name;
      const email = myData[i].email;
      const password = myData[i].password;
      const confirmPassword = myData[i].confirmPassword;
      await page.type(nameSelector, name);
      await page.type(emailSelector, email);
      await page.type(passwordSelector, password);
      await page.type(confirmPasswordSelector, confirmPassword);
      await page.click(registerSelector);
      // await page.pause();
    }
  }
);
//user already exists scenario: 
Given('the user has been registered with following credentials:', async function (dataTable) {
 const myData = dataTable.hashes(); //it gives an array
  for (let i = 0; i < myData.length; i++) {
    //applying loop to print values of object inside an array
    const name = myData[i].name;
    const email = myData[i].email;
    const password = myData[i].password;
    const confirmPassword = myData[i].confirmPassword;
    await page.type(nameSelector, name);
    await page.type(emailSelector, email);
    await page.type(passwordSelector, password);
    await page.type(confirmPasswordSelector, confirmPassword);
    await page.click(registerSelector);
  }
});

Given('the user has been navigated to homepage', async function () {
  await page.isVisible(logoutSelector);
});

Given('the user log outs', async function () {
  await page.click(logoutSelector);
});

Then("user should be navigated to the homepage", async function () {
  console.log("navigated to homepage");
  await page.isVisible(logoutSelector);
});

//invalid credentials

Then("user should see the message {string}", async function (error) {
  await expect(page.locator(popUpSelector)).toHaveText(error);
  //await page.pause();
});
