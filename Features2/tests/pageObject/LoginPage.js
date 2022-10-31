class LoginPage {
  constructor() {
    this.email = "//div/input[@name='email']";
    this.password = "//div/input[@name='password']";
    this.loginButton = 'input[value="Login"]';
    this.message = 'div[class="alert alert-danger"]';
    this.logoutButton = 'span[class="hide-sm"]';
  }
  'a[href="#!"]';
  async Navigate() {
    await page.goto("http://localhost:3000");
  }

  async Login(email, password) {
    await page.type(this.email, email);
    await page.type(this.password, password);
    await page.click(this.loginButton);
  }
}
module.exports = { LoginPage };
