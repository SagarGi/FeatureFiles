class LoginPage {
  constructor() {
    this.baseUrl = "http://localhost:3000";
    this.emailSelector = "//div/input[@name='email']";
    this.passwordSelector = "//div/input[@name='password']";
    this.loginButtonSelector = 'input[value="Login"]';
    this.messageSelector = 'div[class="alert alert-danger"]';
    this.logoutButtonSelector = 'span[class="hide-sm"]';
  }

  async navigateToLoginPage() {
    await page.goto(this.baseUrl);
  }

  async login(email, password) {
    await page.type(this.emailSelector, email);
    await page.type(this.passwordSelector, password);
    await page.click(this.loginButtonSelector);
  }

  async getErrorMessageText() {
    const messageLocator = page.locator(this.messageSelector);
    const [innerText] = await messageLocator.allInnerTexts();
    return innerText;
  }
}
module.exports = { LoginPage };
