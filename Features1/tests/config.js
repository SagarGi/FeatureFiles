const { Before, After, AfterAll, BeforeAll } = require("@cucumber/cucumber");
const { chromium } = require("playwright");
BeforeAll(async () => {
  global.browser = await chromium.launch({ headless: false });
});

Before(async () => {
  global.browserContext = await browser.newContext();
  global.page = await browserContext.newPage();
});

After(async () => {
  await global.browserContext.close();
  await global.page.close();
});

AfterAll(async () => {
  await browser.close();
});

// Before(function () {
//   console.log("This hook runs before a scenario");
// });
// After(function () {
//   console.log("This after hook runs after a scenario");
// });

// BeforeAll(function () {
//   console.log("This BeforeAll runs before all scenario");
// });

// AfterAll(function () {
//   console.log("This hook runs after all scenario");
// });
