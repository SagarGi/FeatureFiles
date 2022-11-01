class RegisterPage {
  constructor() {
    this.registerPageURL = "http://localhost:3000/register";
    this.nameSelector = "//input[@name='name']";
    this.emailSelector = "//input[@name='email']";
    this.passwordSelector = "//input[@name='password']";
    this.confirmPassword = "//input[@name='password2']";
    this.registerBtnSelector = "//input[@value='Register']";
    this.logoutBtnSelector = "//span[@class='hide-sm']";
    this.alertMsgSelector = "//div[@class='alert alert-danger']";
    this.greetingSelector = "//li[1]";
  }

  async navigateToRegistrationPage() {
    await page.goto(this.registerPageURL);
  }

  async fillRegisterForm(dataTable) {
    const inputDatas = dataTable.hashes();
    for (let data of inputDatas) {
      await page.fill(this.nameSelector, data.name);
      await page.fill(this.emailSelector, data.email);
      await page.fill(this.passwordSelector, data.password);
      await page.fill(this.confirmPassword, data.confirmPassword);
    }
    await page.click(this.registerBtnSelector);
  }

  async logout() {
    await page.click(this.logoutBtnSelector);
  }
}
module.exports = { RegisterPage };
