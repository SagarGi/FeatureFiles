//concept/implementation of page object model(POM)
//loginpage page object

class LoginPage {
  constructor() {
    //locators
    this.emailSelector = "input[name='email']";
    this.passwordSelector = "input[name='password']";
    this.loginSelector = "input[value='Login']";
    this.logoutSelector = "span[class='hide-sm']";
    this.popoverSelector = "div[class='alert alert-danger']";
  }

  async navigate() {
    //navigation
    await page.goto("http://localhost:3000");
  }

  async enterCredentials(email, password) {
    //entering the data
    await page.type(this.emailSelector, email);
    await page.type(this.passwordSelector, password);
    await page.click(this.loginSelector);
  }
}

module.exports = { LoginPage };
