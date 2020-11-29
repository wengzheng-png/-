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
    var date2 =await this.ctx.service.wzservice.addshops(this.ctx.request.body)
    // console.log(date2);

  
    
    this.ctx.body={code:200}
  }

  //删除商品的属性
  async delshop() {  
    const { ctx } = this; 
    console.log(this.ctx.request.body);
    var date =await this.ctx.service.wzservice.delshops(this.ctx.request.body)
    this.ctx.body={code:200}
  }

   //返回前端用户的信息
  async users() {  
    const { ctx } = this; 
    var date =await this.ctx.service.wzservice.findusers()
    this.ctx.body=date
  }

  //删除用户的信息
  async usid() {  
    const { ctx } = this; 
    var date =await this.ctx.service.wzservice.deluser(this.ctx.request.body)
    this.ctx.body={code:200}
  }


  //修改用户的信息
  async updeteuser() {  
    const { ctx } = this; 
    console.log(this.ctx.request.body);
    // var date =await this.ctx.service.wzservice.updeteuser(this.ctx.request.body)
    this.ctx.body={code:200}
  }
}

module.exports = HomeController;
