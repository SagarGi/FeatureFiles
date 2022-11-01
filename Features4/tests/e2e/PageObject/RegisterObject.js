class RegisterPage{
    constructor(){
    this.registersSelector = 'a[href="/register"]';
    this.selectorName ='input[name="name"]';
    this.selectorEmail = 'input[name="email"]';
    this.selectorPassword = 'input[name="password"]';
    this.selectorRegisterbtn = 'input[type="submit"]';
    this.selectorConfirmPass = 'input[name="password2"]';
    this.selectorLogout = 'span[class="hide-sm"]';
    }
    async navigateToRegisterPage(){
        await page.click(this.registersSelector);
    }
    async registerCredentials(data){
        await page.type(this.selectorName ,data.name);
        await page.type(this.selectorEmail ,data.email);
        await page.type(this.selectorPassword ,data.password);
        await page.type(this.selectorConfirmPass ,data.confirmpassword);
        await page.click(this.selectorRegisterbtn);
    }
    async reregisterCredentials(data){
        await page.type(this.selectorName ,data.name);
        await page.type(this.selectorEmail ,data.email);
        await page.type(this.selectorPassword ,data.password);
        await page.type(this.selectorConfirmPass ,data.confirmpassword);
        await page.click(this.selectorRegisterbtn);
    }
    async loggedOutFormRegister(){
        await page.click(this.selectorLogout);
    }
}
module.exports={RegisterPage};