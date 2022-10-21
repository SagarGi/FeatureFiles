const { BeforeAll, Before, After, AfterAll } = require("@cucumber/cucumber");
const clearDatabase = require("./databasereset");
const { chromium } = require("playwright");

BeforeAll(async () => {
  global.browser = await chromium.launch({
    headless: false,
    slowMo: 50,
  });
});

Before(async () => {
  global.context = await browser.newContext();
  global.page = await context.newPage();
});

After(async () => {
  await global.context.close();
  await global.page.close();
  await clearDatabase();
});

AfterAll(async () => {
  await browser.close();
});
