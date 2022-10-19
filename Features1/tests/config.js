const {
  Before,
  After,
  AfterAll,
  BeforeAll,
  //setDefaultTimeout,
} = require("@cucumber/cucumber");
const { chromium } = require("playwright");
//setDefaultTimeout(60000);
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
