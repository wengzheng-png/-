const Service = require('egg').Service;
class PerService extends Service {
  async perchange(uid) {
    const sql=``
    const data = await this.app.mysql.query(sql);
    return data;
  }
}
module.exports = PerService;