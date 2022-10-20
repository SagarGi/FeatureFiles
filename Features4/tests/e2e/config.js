const { Before, After, AfterAll, BeforeAll } = require("@cucumber/cucumber");
const clearDatabase = require("../databaseclear ");
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
  await clearDatabase;
});

AfterAll(async () => {
  await browser.close();
});
