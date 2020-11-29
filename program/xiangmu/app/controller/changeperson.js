'use strict';
const Controller = require('egg').Controller;
class HomeController extends Controller {
  async change() {
    const { ctx } = this;
    console.log(ctx.request.body,ctx.request.files);
    //获取前端更改的数据
    let sr = await this.ctx.service.changexinxirj.changeInfo(ctx.request.body,ctx.request.files);
    //数据库查询结果是一个对象

    if(sr[0]){
      ctx.body = {code:2006,info:"修改成功"};
    }
    console.log(sr);
    ctx.body = 'shuju';
  }
}
module.exports = HomeController;