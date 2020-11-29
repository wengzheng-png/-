const Service = require('egg').Service;
class Services extends Service {
  //查询管理员的登录的密码和账号
  async find(uid) { 
    const sql = `select * from wzhostinfo where id=1`
    const data = await this.app.mysql.query(sql);
    console.log(data);
    return data;

  }

  //查询所有的商品信息
  async findshops(uid) {
    const sql = `select * from flower_car`
    const data2 = await this.app.mysql.query(sql);
    // console.log(data2);
    return data2;

  }

  //  往数据库中添加商品的属性
  async addshops(uid) {
    const sql = `insert into flower_car (f_img1,f_img2,f_img3,f_img4,f_info,f_price,f_language,f_materials,f_box)values(${uid.img1},${uid.img2},${uid.img3},${uid.img4},${uid.price},${uid.huayu},${uid.cailiao},${uid.baozhaung},${uid.talk})`
    const data3 = await this.app.mysql.query(sql);
    // console.log(data2);
    return data3;

  }

  //删除商品
  async delshops(uid) {
    const sql = `delete from flower_car where f_id=${uid.del}`
    const data3 = await this.app.mysql.query(sql);
    // console.log(data2);
    return data3;

  }
  //查询用户的信息
  async findusers(uid) {
    const sql = `select * from user`
    const data4 = await this.app.mysql.query(sql);
    // console.log(data2);
    return data4;

  }

   //删除商品
  async deluser(uid) {
    const sql = `delete from user where id=${uid.usid}`
    const data4 = await this.app.mysql.query(sql);
    // console.log(data2);
    return data4;

  }

  //更改商品的部分的属性
  async updeteuser(uid) {
    // const sql = `update user set id=${uid.0},email="${uid.1}",pwd ="${uid.2}" ,sex = "${uid.3}" where id = ${uid.0}`
    // const data4 = await this.app.mysql.query(sql);
    // console.log(data2);
    return data4;

  }
}
module.exports = Services;