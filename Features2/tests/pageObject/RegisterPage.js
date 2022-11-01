class RegisterPage {
  constructor() {
    this.registerSelector = 'a[href="/register"]';
    this.nameSelector = 'input[name="name"]';
    this.emailSelector = 'input[name="email"]';
    this.passwordSelector = 'input[name="password"]';
    this.confirmSelector = 'input[name="password2"]';
    this.logoutSelector = 'span[class="hide-sm"]';
    this.registerButtomSelector = 'input[value="Register"]';
    this.messageSelector = 'div[class="alert alert-danger"]';
    this.registerUrl = "http://localhost:3000/register";
  }
  async clickRegisterButton() {
    await page.click(this.registerSelector);
  }

  async navigateToRegisterPage() {
    await page.goto(this.registerUrl);
  }

  async register(name, email, password, confirmpassword) {
    await page.type(this.nameSelector, name);
    await page.type(this.emailSelector, email);
    await page.type(this.passwordSelector, password);
    await page.type(this.confirmSelector, confirmpassword);
    await page.click(this.registerButtomSelector);
  }
}
module.exports = { RegisterPage };
