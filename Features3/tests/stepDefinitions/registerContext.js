const { Given, When, Then } = require("@cucumber/cucumber");
const { expect } = require("@playwright/test");

const nameSelector = "//input[@name='name']";
const emailSelector = "//input[@name='email']";
const passwordSelector = "//input[@name='password']";
const confirmPassword = "//input[@name='password2']";
const registerBtnSelector = "//input[@value='Register']";

Given("User has navigated to register page", async function () {
  console.log("Navigated to Register page");
  await page.goto("http://localhost:3000/register");
});

When(
  "User registers new account entering following credentials",
  async function (dataTable) {
    const inputDatas = dataTable.hashes();
    console.log(dataTable);

    await page.fill(nameSelector, inputDatas[0].name);
    await page.fill(emailSelector, inputDatas[0].email);
    await page.fill(passwordSelector, inputDatas[0].password);
    await page.fill(confirmPassword, inputDatas[0].confirmPassword);

    await page.click(registerBtnSelector);
  }
);

Then(
  "new user should be navigated to Contact Fox Home page",
  async function () {
    const logoutBtn = "//span[@class='hide-sm']";
    const grettingSelector = "//li[1]";

    const locator = page.locator(logoutBtn);
    await expect(locator).toBeVisible();

    await expect(page.locator(grettingSelector)).toContainText("Hello, ");

    console.log("Then step executed successfully");
  }
);
