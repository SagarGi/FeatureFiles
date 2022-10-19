const { Given, When, Then } = require("@cucumber/cucumber");
const { expect } = require("@playwright/test");

Given("the user has browsed to login page", async function () {
  console.log("Navigated to Login page");
  await page.goto("http://localhost:3000/");
  // await page.pause();
});

// When(
//   "user enters correct credentials with email {string} and password {string}",
//   function (email, password) {
//     console.log("Enters Credentials");
//     const validEmail = "valid email";
//     if (validEmail !== email) {
//       throw new Error("Email is invalid");
//     }
//     console.log(email);
//     console.log(password);
//   }
// );
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

When(
  "user enters incorrect credentials with email {string} and password {string}",
  function (string, string2) {
    console.log("Incorrect credential");
    console.log(string, string2);
  }
);

When("user clicks login button", function () {
  console.log("clicks Login button");
});

Then("error message {string} should be shown", function (string) {
  console.log("Error message thrown");
});

When("User logins with valid credentials", function (dataTable) {
  const myTable = dataTable.hashes();
  for (let i = 0; i < myTable.length; i++) {
    const email = myTable[i].email;
    const password = myTable[i].password;
    console.log("Email: " + email);
    console.log("Password: " + password);
  }
});
