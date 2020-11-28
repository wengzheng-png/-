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
    const sql = `select * from wzshops`
    const data2 = await this.app.mysql.query(sql);
    // console.log(data2);
    return data2;

  }

  //  往数据库中添加商品的属性
  async addshops(uid) {
    const sql = `insert into wzshops (img1,img2,img3,img4,price,huayu,cailiao,baozhaung,talk,sent)values(${uid.img1},${uid.img2},${uid.img3},${uid.img4},${uid.price},${uid.huayu},${uid.cailiao},${uid.baozhaung},${uid.talk},${uid.sent})`
    const data3 = await this.app.mysql.query(sql);
    // console.log(data2);
    return data3;

  }

  //删除商品
  async delshops(uid) {
    const sql = `delete from wzshops where flowerid=${uid.del}`
    const data3 = await this.app.mysql.query(sql);
    // console.log(data2);
    return data3;

  }
  //查询用户的信息
  async findusers(uid) {
    const sql = `select * from wzusers`
    const data4 = await this.app.mysql.query(sql);
    // console.log(data2);
    return data4;

  }


  async deluser(uid) {
    const sql = `delete from wzusers where uid=${uid.usid}`
    const data4 = await this.app.mysql.query(sql);
    // console.log(data2);
    return data4;

  }
}
module.exports = Services;