class LoginPage {
  constructor() {
    this.emailSelector = 'input[name="email"]';
    this.passwordSelector = 'input[name="password"]';
    this.LoginSelector = 'input[type="submit"]';
    this.logoutSelector = 'span[class="hide-sm"]';
    this.popupSelector = 'div[class="alert alert-danger"]';
  }
  async navigate() {
    await page.goto("http://localhost:3000");
  }

  async enterCredential(email, password) {
    await page.type(this.emailSelector, email);
    await page.type(this.passwordSelector, password);
    await page.click(this.LoginSelector);
  }
}

module.exports = { LoginPage };
