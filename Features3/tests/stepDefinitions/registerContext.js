const { Given, When, Then } = require("@cucumber/cucumber");
const { expect } = require("@playwright/test");
const { RegisterPage } = require("../pageObjects/registerPage");

const registerPage = new RegisterPage();
// const nameSelector = "//input[@name='name']";
// const emailSelector = "//input[@name='email']";
// const passwordSelector = "//input[@name='password']";
// const confirmPassword = "//input[@name='password2']";
// const registerBtnSelector = "//input[@value='Register']";
// const logoutBtn = "//span[@class='hide-sm']";
// const alertMsgSelector = "//div[@class='alert alert-danger']";

Given("User has navigated to register page", async function () {
  await registerPage.RegisterNavigation();
  // await page.goto("http://localhost:3000/register");
});

When(
  "User registers new account entering following credentials",
  async function (dataTable) {
    const inputDatas = dataTable.hashes();

    await registerPage.fillRegisterInputFields(inputDatas);
    // await page.fill(nameSelector, inputDatas[0].name);
    // await page.fill(emailSelector, inputDatas[0].email);
    // await page.fill(passwordSelector, inputDatas[0].password);
    // await page.fill(confirmPassword, inputDatas[0].confirmPassword);

    // await page.click(registerBtnSelector);
    await registerPage.clickRegisterBtn();
  }
);

Then(
  "new user should be navigated to Contact Fox Home page",
  async function () {
    const logoutBtnLocator = await page.locator(registerPage.logoutBtnSelector);

    await expect(logoutBtnLocator).toBeVisible();
    await expect(page.locator(registerPage.greetingSelector)).toContainText(
      "Hello, "
    );
  }
);

Given(
  "account has been created with following credentials",
  async function (dataTable) {
    const inputDatas = dataTable.hashes();

    await registerPage.fillRegisterInputFields(inputDatas);
    // await page.fill(nameSelector, inputDatas[0].name);
    // await page.fill(emailSelector, inputDatas[0].email);
    // await page.fill(passwordSelector, inputDatas[0].password);
    // await page.fill(confirmPassword, inputDatas[0].confirmPassword);

    // await page.click(registerBtnSelector);
    await registerPage.clickRegisterBtn();
  }
);

Given("user has logged out", async function () {
  await registerPage.clickLogoutBtn();
  // await page.click(logoutBtn);
});

Then(
  "pop up should appear showing informational message as {string} on the webUI",
  async function (alertMessage) {
    await expect(page.locator(registerPage.alertMsgSelector)).toContainText(
      alertMessage
    );
  }
);
