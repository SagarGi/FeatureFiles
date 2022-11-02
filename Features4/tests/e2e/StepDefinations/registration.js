
const {Given,When,Then} = require("@cucumber/cucumber");
const {expect} =require("@playwright/test");
const { RegisterPage } = require("../PageObject/RegisterObject");
 
const registerPage =new RegisterPage();

Given('the user has navigated to the register page', async function () {
 console.log("The user has to navigated to the register page:");
 await registerPage.navigateToRegisterPage();
});

When('the user registers with the following credentials', async function (dataTable) {
  const inputData= await dataTable.hashes();
  for(let data of inputData){
    await registerPage.registerCredentials(data);
  }
 });

 Given('the user has been register with the following credentials', async function (dataTable) {
  const inputData= await dataTable.hashes();
  for(let data of inputData){
    await registerPage.registerCredentials(data);
  }
 });
 
Given('the user logged out from the home page',async function () {
   await registerPage.loggedOutFormRegister();
});
