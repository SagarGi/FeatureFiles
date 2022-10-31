class LoginPage{
    constructor(){
        this.selectorEmail = "input[name='email']";
        this.selectorPassword= "input[name='password']";
        this.selectorLoginbtn= "input[type='submit']";
        this.selectorLogout ="span[class ='hide-sm']"
        this.selectorInvalidcre = "div[class = 'alert alert-danger']";
    }     
    async navigate(){
        await page.goto("http://localhost:3000/");
    }
    async login(email,password){
        await page.type(this.selectorEmail, email);
        await page.type(this.selectorPassword,password);
        await page.click(this.selectorLoginbtn);
    }
}
module.exports={LoginPage};