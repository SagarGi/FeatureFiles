const {Given,When,Then} = require("@cucumber/cucumber");
const {expect} =require("@playwright/test");

const selectorEmail = "input[name='email']";
const selectorName= "input[name='name']";
const selectorPhone = "input[name='phone']";
const selectorAddContactbtn ="input[class='btn btn-primary brn-block']";
const selectorPersonal = "input[value='personal']";
const selectorProfessional = "input[value='professional']";

When('the user enters name as {string}, email as {string}, phone as {string} and Contact type as {string}',  async function (Name, Email, Phone, Contacttype) {
    await page.type(selectorName,Name);
    await page.type(selectorEmail,Email);
    await page.type(selectorPhone,Phone);
    await page.click(selectorPersonal,Contacttype);
    await page.click(selectorAddContactbtn);
  });
  Then('the contacts with name as {string}, email as {string}, phone as {string} and Contact type as "Professional"should be displayed', function (string, string2, string3) {
    // Write code here that turns the phrase above into concrete actions
    return 'pending';
  });