'use strict';
//后端  接收service发送过来的数据    业务代码  返回数据给前端  
const Controller = require('egg').Controller;
class HomeController extends Controller {

  async shopping() {
    const { ctx } = this;
    //console.log(this.ctx.request.body, 4444)
    var re = await ctx.service.zmhome.searchInfo(ctx.request.body);//获取商品页面被点击商品的
    //console.log(re[0].f_info, 222);
    this.ctx.session.f_info = re[0].f_info;//缓存起来  购物车页面请求网络的时候又返回给前端  商品的字段信息  
    // console.log(this.ctx.session.f_info);
    ctx.body = "查询数据库名字";
  }


  //获取数据库里的所有信息
  async load() {
    const { ctx } = this;
    // console.log(this.ctx.session.f_info)
    var lo = await ctx.service.zmhome.carLoad(this.ctx.session.f_info);//调用函数  查询数据库里的字段相关所有信息返回给前端
    //console.log(lo, 2);
    ctx.body = lo;
  }


  async goods() {
    const { ctx } = this;
    // console.log(this.ctx.session.f_info)
    var lo = await ctx.service.zmhome.goodsLoad();//调用函数  查询所有信息返回给前端
    //console.log(lo, 2);
    ctx.body = lo;
  }
}

module.exports = HomeController;


