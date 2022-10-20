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
    await page.pause();
  }
});

Then("user should be navigated to the homepage", async function () {
  console.log("navigated to homepage");
  await page.isVisible(logoutSelector);
});
