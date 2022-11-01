const { Given, When, Then } = require("@cucumber/cucumber");
const { expect } = require("@playwright/test");
const { RegisterPage } = require("../pageObjects/registerPage");

const registerPage = new RegisterPage();

Given("User has navigated to register page", async function () {
  await registerPage.navigateToRegistrationPage();
});

When(
  "User registers new account entering following credentials",
  async function (dataTable) {
    const inputDatas = dataTable.hashes();

    await registerPage.fillRegisterForm(dataTable);
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
    await registerPage.fillRegisterForm(dataTable);
  }
);

Given("user has logged out", async function () {
  await registerPage.logout();
});

Then(
  "pop up should appear showing informational message as {string} on the webUI",
  async function (alertMessage) {
    await expect(page.locator(registerPage.alertMsgSelector)).toContainText(
      alertMessage
    );
  }
);
