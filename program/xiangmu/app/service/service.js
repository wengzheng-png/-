const Service = require('egg').Service;
class Services extends Service {
async find(uid) {
const sql=``
const data = await this.app.mysql.query(sql);
return data;
  }
}
module.exports = Services;