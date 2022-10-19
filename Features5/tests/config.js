//console.log("I'm in the config file");
// const { Before, BeforeAll, After, AfterAll } = require("@cucumber/cucumber");

// Before(function () {
//   console.log("This hook runs before any scenario");
// });

// BeforeAll(function () {
//   console.log(
//     "---------------------------------------This hook runs in the beginning"
//   );
// });

// After(function () {
//   console.log("This hook runs after any scenario");
// });

// AfterAll(function () {
//   console.log("------------------------------------This hook runs at the end ");
// });

const { chromium } = require("playwright");
const {
  BeforeAll,
  Before,
  AfterAll,
  After,
  setDefaultTimeout,
} = require("@cucumber/cucumber");
setDefaultTimeout(60000);

BeforeAll(async () => {
  global.browser = await chromium.launch({
    headless: false,
    slowMo: 200,
  });
});

Before(async () => {
  global.context = await browser.newContext();
  global.page = await context.newPage();
});

AfterAll(async function () {
  await browser.close();
});

After(async function () {
  await context.close();
  await page.close();
});
