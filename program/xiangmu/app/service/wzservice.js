const Service = require('egg').Service;
class Services extends Service {
  async find(uid) {
    const sql = `select * from wzhostinfo where id=1`
    const data = await this.app.mysql.query(sql);
    console.log(data);
    return data;

  }

  async findshops(uid) {
    const sql = `select * from wzshops`
    const data2 = await this.app.mysql.query(sql);
    console.log(data2);
    return data2;

  }

}
module.exports = Services;