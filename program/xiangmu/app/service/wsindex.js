const Service = require('egg').Service;
class GoodsService extends Service {
  async ShowGoods() {
    // 获取数据   发送给wsindex  然后把数据传输给前端
    // 需要获取数据库的  鲜花图片  鲜花信息  鲜花价格
   // SELECT f_img1,f_info,f_price FROM flower_car 
    const sql=`SELECT f_img1,f_info,f_price FROM flower_car`
    const data = await this.app.mysql.query(sql);
    return data;
  }
}
module.exports = GoodsService;