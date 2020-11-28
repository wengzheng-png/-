'use strict';
//编写控制器
// 后端 注册接口  数据接口  
const Controller = require('egg').Controller;
const svg = require("svg-captcha")
class HomeController extends Controller {
  async register() {
   const {ctx} = this
   console.log(ctx.request.body,ctx.request.files);
   //1.收到前端的数据
	//2.也要做数据验证
	//3.把数据处理为sql语句
	//4.去数据库中查询是否邮箱已经注册
	//5.如果没有注册过就插入数据库==>并返回给前端注册成功的标识
  //6.如果注册过就直接前端返回注册失败的标识

  var re = await ctx.service.home.isContainUser(ctx.request.body)
  //把前端输入的数据传给后端 让其判断是否存在（连数据库）
  console.log(re);//数据库返回的结果
  
    if(re[0]){
      ctx.body = {code:4001,info:"邮箱已被注册"};
    }else{
      await ctx.service.home.register(ctx.request.body,ctx.request.files)
      ctx.body={code:2001,info:"注册成功"}
    }
  }

  // 验证码
  async getVerif(){
    var verifcode = svg.create({
      size:4,
      fontSize:50,
      width:100,
      height:40,
      background:"black",
      color:true
    })
    console.log(verifcode.data,111);
    this.ctx.session.verif = verifcode.text // 缓存验证码的文字
    this.ctx.body = verifcode.data
  }
  async login(){
    console.log(this.ctx.request.body);//{email:'1212@.com',pwd:'1111',verif:'zjks'}
    // 1.获取前端登陆时发送过来的数据（邮箱密码验证码）

    // 2.比较发过来的验证码（this.ctx.request.body.verif）和上一次获取验证码（通过缓存）是否一样
      // 2.1 取出缓存的验证码文字
      // 2.2 和发送过来的验证码文字比较
      if(this.ctx.request.body.verif==this.ctx.session.verif){
        // 3.验证码正确，去数据库查询 用户邮箱和密码是否正确（用service去产生数据）
        var re = await this.ctx.service.home.login(this.ctx.request.body)
        // console.log(re,6666);//数据库信息
        // 3.1数据库没有这个邮箱和密码匹配项（返回提示信息）
        if(!re[0]){this.ctx.body = {info:"邮箱或密码错误",code:"4003"}}
        // 3.2数据库有这个邮箱和密码匹配项（缓存用户登录信息、返回提示信息）
           
        else{ 
          // 这行代码一旦执行了  以后前端请求的用户再次请求后端任何接口  都可以直接获取这个缓存的邮箱
          this.ctx.session.email = this.ctx.request.body.email
          this.ctx.body = {info:"登陆成功",code:"2002"}
        }
      }else{
        // 4.返回验证码错误的信息
        this.ctx.body={info:"验证码错误",code:"4002"}
      }
  }
}

module.exports = HomeController;
