'use strict';
const Controller = require('egg').Controller;
class PerController extends Controller {
  async quzhi() {
    const { ctx } = this;
    //取出缓存信息
    //有缓存，直接访问该用户
    //没有缓存，没有登录
    if(this.ctx.session.email){
      //去数据库中获取该用户信息
      let re = await this.ctx.service.personcenter.huoqu(this.ctx.session.email)
      this.ctx.body = {info:"获取用户信息成功",code:2005,data:re}
    }else{
      //返回未登录
      this.ctx.body = {info:"未登录",code:4005}
      
    }
    let myinfo = await ctx.service.personcenter.huoqu()
    ctx.body = '';
  }
}
module.exports = PerController;