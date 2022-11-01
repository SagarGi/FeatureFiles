class HomePage {
  constructor() {
    this.logoutSelector = 'span[class="hide-sm"]';
  }

  async userLoggedOut() {
    await page.click(this.logoutSelector);
  }
}

module.exports = { HomePage };
