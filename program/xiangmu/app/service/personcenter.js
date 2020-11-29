const Service = require('egg').Service;
class PerService extends Service {
  async huoqu(email) {
    const sql=`SELECT  *  FROM  user WHERE email = "${email}"`
    const data = await this.app.mysql.query(sql);
    return data;
  }
}
module.exports = PerService;