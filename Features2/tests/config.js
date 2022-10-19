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
