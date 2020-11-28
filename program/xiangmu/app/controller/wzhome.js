'use strict';

const Controller = require('egg').Controller;

class HomeController extends Controller {
  async index() {
    const { ctx } = this;
    ctx.body = 'hi, egg';
  }

  async hostinfo() {  
    const { ctx } = this;
    console.log(ctx.request.body);//管理员的业务
    // ctx.body = "我接受到了你的请求"
    
    var date =await this.ctx.service.wzservice.find()
    console.log(date[0]);
     if(date[0].pwd==ctx.request.body.pwd&&date[0].username==ctx.request.body.zhanghao){
         //重定向的无法执行
        //  this.ctx.redirect("../public/host.html")
           
          this.ctx.body={code:"2001"}
     }
  }


  async shopinfo() {  
    const { ctx } = this; 
    var date =await this.ctx.service.wzservice.findshops()
    this.ctx.body=date
  }

  async shopup() {  
    const { ctx } = this; 
    var date2 = this.ctx.request.body
    console.log(date2);
  }
}

module.exports = HomeController;
