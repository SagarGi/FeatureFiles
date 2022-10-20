const { chromium } = require("playwright"); //browser engine
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
    //browser
    headless: false,
    slowMo: 100,
  });
});

Before(async () => {
  global.context = await browser.newContext(); //context
  global.page = await context.newPage(); //page
});

AfterAll(async function () {
  await browser.close();
});

After(async function () {
  await context.close();
  await page.close();
});
