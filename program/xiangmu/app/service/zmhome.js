//控制层
//写后端  发送数据 给  controller 

var Service = require('egg').Service;

class HomeServiceService extends Service {
  async searchInfo(arg) {
    console.log(arg);
    //在数据库查询前端被点击商品的 f_info  字段
    var sql = `select * from flower_car where f_info = "${arg.f_info}"`;
    // console.log(sql, 333);
    var re = await this.app.mysql.query(sql);//前后端连接
    // console.log(re, 111);
    //返回给调用函数整个字段完整信息
    return re;
  }


  //根据缓存的字段  查询相关信息  返回
  async carLoad(arg) {
    // console.log(arg);
    var sql = `select * from flower_car where f_info = "${arg}"`;
    //console.log(sql, 3);
    var re = await this.app.mysql.query(sql);//前后端连接
    // console.log(re, 1);
    return re;
  }

  //根据缓存的字段  查询相关信息  返回
  async goodsLoad() {
    var sql = `select * from flower_car`;
    //console.log(sql, 3);
    var re = await this.app.mysql.query(sql);//前后端连接
    // console.log(re, 1);
    return re;
  }

}
module.exports = HomeServiceService;