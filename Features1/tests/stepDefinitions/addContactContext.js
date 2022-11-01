const { Given, When, Then } = require("@cucumber/cucumber");
const { expect } = require("@playwright/test");
const addContactNameSelector = 'input[name="name"]';
const addContactEmailSelector = 'input[name="email"]';
const addContactPhoneSelector = 'input[name="phone"]';
const addContactSelector = 'input[class="btn btn-primary brn-block"]';
const deleteSelector = 'button[class="btn btn-danger btn-sm"]';

When(
  "the user enters following contact information",
  async function (dataTable) {
    const dataArray = dataTable.hashes();
    for (i = 0; i < dataArray.length; i++) {
      const individualData = dataArray[i];
      const name = individualData.name;
      const email = individualData.email;
      const phone = individualData.phone;
      const contactType = individualData.contactType;
      const addContactRadioTypeSelector = `input[value=${contactType}]`;
      await page.type(addContactNameSelector, name);
      await page.type(addContactEmailSelector, email);
      await page.type(addContactPhoneSelector, phone);
      await page.check(addContactRadioTypeSelector);
      await page.click(addContactSelector);
    }
  }
);
Then("following contacts should be displayed", async function (dataTable) {
  const deleteLocator = page.locator(deleteSelector);
  await expect(deleteLocator).toBeVisible();
});
