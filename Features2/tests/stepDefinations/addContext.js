const { Given, When, Then, setDefaultTimeout } = require("@cucumber/cucumber");
const { expect } = require("@playwright/test");

const registerSelector = 'a[href="/register"]';
const nameSelector = 'input[name="name"]';
const homeemailSelector = 'input[name="email"]';
const emailSelector = 'input[name="email"]';
const passwordSelector = 'input[name="password"]';
const confirmSelector = 'input[name="password2"]';
const logoutSelector = 'span[class="hide-sm"]';
const registerButtomSelector = 'input[value="Register"]';
const messageSelector = 'div[class="alert alert-danger"]';
// const homenameSelector = 'input[name="name"]';
const homephoneSelector = 'input[name="phone"]';
const addSelector = 'input[value="Add Contact"]';
const emailshownSelector = '//i[@class="fas fa-envelope-open-text"]/parent::li';

Given(
  "the user has been registered with the name with {string} and email with {string} and password with {string} and confirm password with {string}",
  async function (name, email, password, confirmpassword) {
    console.log("User Has navigated to Registration page");
    await page.type(nameSelector, name);
    await page.type(emailSelector, email);
    await page.type(passwordSelector, password);
    await page.type(confirmSelector, confirmpassword);
    await page.click(registerButtomSelector);
  }
);

Given("the user has been navigated to the homepage", async function () {
  console.log("userhas navigated to homepage");
});

When(
  "the user submits name with {string} and email with {string} and phone with {string} chooses the contact type as {string}",
  async function (name, email, phone, contacType) {
    await page.pause();
    await page.type(nameSelector, name);
    await page.type(emailSelector, email);
    await page.type(homephoneSelector, phone);
    const contacttypeSelector = `input[value=${contacType}]`;
    await page.click(contacttypeSelector);
    console.log(contacttypeSelector);
    await page.click(addSelector);
  }
);

Then(
  "the user info should be added to the contact list with email {string}",
  async function (email) {
    const emailLocator = page.locator(emailshownSelector);
    const [innerText] = await emailLocator.allInnerTexts();
    console.log(innerText);
    await expect(emailLocator).toBeVisible();
    if (innerText.trim() !== email) {
      throw new Error("contact not found");
    }
  }
);
