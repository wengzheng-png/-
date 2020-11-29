'use strict';
const Controller = require('egg').Controller;
class GoodsController extends Controller {
  async goods() {
    const { ctx } = this;
    // 不需要前端传过来的数据
    // 但是需要将后端数据库的数据传输给前端 如： 鲜花图片  鲜花信息  鲜花价格
    // 处理sql语句   有两个形参  图片文件 字段
    var re = await ctx.service.wsindex.ShowGoods(); 
    ctx.body = re; 
  }
}
module.exports = GoodsController;