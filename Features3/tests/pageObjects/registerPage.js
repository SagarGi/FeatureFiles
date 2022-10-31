class RegisterPage {
  constructor() {
    this.nameSelector = "//input[@name='name']";
    this.emailSelector = "//input[@name='email']";
    this.passwordSelector = "//input[@name='password']";
    this.confirmPassword = "//input[@name='password2']";
    this.registerBtnSelector = "//input[@value='Register']";
    this.logoutBtnSelector = "//span[@class='hide-sm']";
    this.alertMsgSelector = "//div[@class='alert alert-danger']";
    this.greetingSelector = "//li[1]";
  }

  async RegisterNavigation() {
    await page.goto("http://localhost:3000/register");
  }

  async fillRegisterInputFields(inputDatas) {
    await page.fill(this.nameSelector, inputDatas[0].name);
    await page.fill(this.emailSelector, inputDatas[0].email);
    await page.fill(this.passwordSelector, inputDatas[0].password);
    await page.fill(this.confirmPassword, inputDatas[0].confirmPassword);
  }

  async clickRegisterBtn() {
    await page.click(this.registerBtnSelector);
  }

  async clickLogoutBtn() {
    await page.click(this.logoutBtnSelector);
  }
}
module.exports = { RegisterPage };
