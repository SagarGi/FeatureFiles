const { LoginPage } = require("../pageObjects/LoginPage");

class RegisterPage {
  constructor() {
    this.registerSelector = 'a[href="/register"]';
    this.nameSelector = 'input[name="name"]';
    this.emailSelector = 'input[name="email"]';
    this.passwordSelector = 'input[name="password"]';
    this.confirmPasswordSelector = 'input[name="password2"]';
    this.registerButtonSelector = 'input[type="submit"]';
    this.errorMsgSelector = 'div[class="alert alert-danger"]';
    this.logoutSelector = 'span[class="hide-sm"]';
  }
  async navigate() {
    await page.click(this.registerSelector);
  }

  async userInformationEntered(dataTable) {
    const dataArray = dataTable.hashes();
    for (let data of dataArray) {
      await page.type(this.nameSelector, data.name);
      await page.type(this.emailSelector, data.email);
      await page.type(this.passwordSelector, data.password);
      await page.type(this.confirmPasswordSelector, data.confirmpassword);
      await page.click(this.registerButtonSelector);
    }
  }

  async userLoggedOut() {
    await page.click(this.logoutSelector);
  }
}

module.exports = { RegisterPage };
