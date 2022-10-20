const { Before, After, AfterAll, BeforeAll } = require("@cucumber/cucumber");
const { chromium } = require("playwright");
const clearDatabases = require("./databaseCleaner");

BeforeAll(async () => {
  global.browser = await chromium.launch({});
});

Before(async () => {
  global.browserContext = await browser.newContext();
  global.page = await browserContext.newPage();
});

After(async () => {
  await global.browserContext.close();
  await global.page.close();
  await clearDatabases();
});

AfterAll(async () => {
  await browser.close();
});
