const { BeforeAll, Before, After, AfterAll } = require("@cucumber/cucumber");
const { chromium } = require("playwright");

BeforeAll(async () => {
  global.browser = await chromium.launch({
    headless: false,
  });
});

Before(async () => {
  global.context = await browser.newContext();
  global.page = await context.newPage();
});

After(async () => {
  await global.context.close();
  await global.page.close();
});

AfterAll(async () => {
  await browser.close();
});

// // BeforeAll(function () {
// //   console.log("This runs before every test file");
// // });

// // AfterAll(function () {
// //   console.log("This runs after completing all the scenario");
// // });

// // After(function () {
// //   console.log("this runs after every scenario");
// // });

// // Before(function () {
// //   console.log("this runs Before each scenario after compleating each");
