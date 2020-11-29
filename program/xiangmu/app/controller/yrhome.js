'use strict';
//编写控制器
// 后端 注册接口  数据接口  
const Controller = require('egg').Controller;
const svgCaptcha = require("svg-captcha")
class HomeController extends Controller {
  async register() {
    const { ctx } = this
    console.log(ctx.request.body,ctx.request.files);
    // 1.后端收到前端的数据
    // 2.也要做数据验证
    // 3.把数据处理为sql语句
    // 4.去数据库中查询是否已经注册
    // 5.如果没有注册过就插入数据库==》并返回给前端注册成功的标识（code）
    // 6.如果注册过就直接给前端返回数据（注册失败的标识）
    var re = await ctx.service.yrhome.isContainUser(ctx.request.body)
    console.log(re,111);
    if(re[0]){
        ctx.body = {code:4001,info:"邮箱已被注册"}
    }else{   
        await ctx.service.yrhome.register(ctx.request.body,ctx.request.files)
        ctx.body = {code:2001,info:"注册成功"}
    }
  }
  async getVerif(){
    var vefif = svgCaptcha.create({
      size:4,
      fontSize:50,
      width:100,
      height:40,
      backgound:"#cc9966"
    })
    this.ctx.session.vefif = vefif.data//缓存验证码文字
    this.ctx.body = vefif.data//验证码图片发给前端
  }
  async login(){
    console.log(this.ctx.request.body);
    // 1.获取前端登陆时发送过来的数据（邮箱 密码 验证码）

    // 2.比较发过来的验证码和上一次获取验证码（缓存）是否一样
    // 2.1取出缓存的验证码文字
    // 2.2和发送过来的验证码文字比较
    if(this.ctx.request.body.vefif==this.ctx.session.vefif){
      // 3.验证码正确 去查询数据库 用户邮箱和密码是否都对
      var re = await this.ctx.service.yrhome.login(this.ctx.request.body)
      // 3.1数据库中没有这个邮箱和密码匹配项
      if(!re[0]){
          this.ctx.body = {code:4003,info:"邮箱或密码错误"}
          // 3.2数据库中有这个邮箱和密码匹配项
      }else{
        // 3.3缓存用户登录的信息
        this.ctx.session.email = this.ctx.request.body.email
        // 3.4发送登录成功的标识
        this.ctx.body = {code:2002,info:"登录成功"}
      }
    }else{
      // 4.返回验证码错误信息
      this.ctx.body = {code:4002,info:"验证码错误"}
    }
  }
}

module.exports = HomeController;
