const { Given, When, Then } = require("@cucumber/cucumber");
const { expect } = require("@playwright/test");

const emailSelector = 'input[name="email"]';
const passwordSelector = 'input[name="password"]';
const LoginSelector = 'input[type="submit"]';
const logoutSelector = 'span[class="hide-sm"]';

Given("the user has navigated to the login page", async function () {
  console.log("The user has navigated to the login page");
  await page.goto("http://localhost:3000");
  //await page.pause();
});

When(
  "the user enters valid {string} and {string}",
  async function (validemail, validpassword) {
    await page.type(emailSelector, validemail);
    await page.type(passwordSelector, validpassword);
    await page.click(LoginSelector);
  }
);

Then("the home page should be displayed on the webUI", async function () {
  const logoutLocator = page.locator(logoutSelector);
  await expect(logoutLocator).toBeVisible();
  console.log("The user is navigated to the home page");
  await page.pause();
});

// When(
//   "the user enters email address as {string} and {string}",
//   function (invalidemail, password) {
//     console.log("when line");
//   }
// );

// Then("the error {string} should pop", function (string) {
//   console.log("then line");
// });

// When("the user logins with following valid credential", function (dataTable) {
//   // Write code here that turns the phrase above into concrete actions
//   //return 'pending';
//   const dataArray = dataTable.hashes();
//   //console.log(dataArray);

//   //   for (i = 0; i < dataArray.length; i++) {
//   //     const individualData = dataArray[i];
//   //     const email = individualData.email;
//   //     const password = individualData.password;
//   //     console.log(
//   //       `The email for user is ${i + 1} is ${email} and password is ${password}`
//   //     );
//   //   }

//   dataArray.forEach((individualData) => {
//     console.log("Email is: ", individualData.email);
//     console.log("Password is: ", individualData.password, "\n\n\n\n");
//   });

//   //   while (dataArray.length > 0) {
//   //     const individualData = dataArray.pop();
//   //     console.log(individualData);
//   //   }
// });
