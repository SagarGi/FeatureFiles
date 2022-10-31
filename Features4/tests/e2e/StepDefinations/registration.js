
const {Given,When,Then} = require("@cucumber/cucumber");
const {expect} =require("@playwright/test");
 
const registersSelector = 'a[href="/register"]';
const selectorName ='input[name="name"]';
const selectorEmail = 'input[name="email"]';
const selectorPassword = 'input[name="password"]';
const selectorRegisterbtn = 'input[type="submit"]';
const selectorConfirmPass = 'input[name="password2"]';
const selectorLogout = 'span[class="hide-sm"]';

Given('the user has navigated to the register page', async function () {
 console.log("The user has to navigated to the register page:");
 await page.click(registersSelector);
});


When('the user registers with the following credentials', async function (dataTable) {
 const dataArray=dataTable.hashes();
 for(i=0; i<dataArray.length; i++){
  const singleData = dataArray[i];
  const name =singleData.name;
  const email = singleData.email;
  const password = singleData.password;
  const confirmPassword= singleData.confirmpassword;
  await page.type(selectorName ,name);
  await page.type(selectorEmail ,email);
  await page.type(selectorPassword ,password);
  await page.type(selectorConfirmPass ,confirmPassword);
  await page.click(selectorRegisterbtn);
 }
 });

 Given('the user has been register with the following credentials',async function (dataTable) {
  const dataArray=dataTable.hashes();
  for(i=0; i<dataArray.length; i++){
  const singleData = dataArray[i];
  const name =singleData.name;
  const email = singleData.email;
  const password = singleData.password;
  const confirmPassword= singleData.confirmpassword;
  await page.type(selectorName ,name);
  await page.type(selectorEmail ,email);
  await page.type(selectorPassword ,password);
  await page.type(selectorConfirmPass ,confirmPassword);
  await page.click(selectorRegisterbtn);
  }
});

Given('the user logged out from the home page',  async function () {
 await page.click(selectorLogout);
});
