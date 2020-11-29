const Service = require('egg').Service;
let fs = require("fs");
class HomeService extends Service {
  async changeInfo(zhi1,zhi2) {
    //处理数据为sql
    var oldpath = zhi2[0].filepath;
    
    var newpath = __dirname + "/../public/picture/" + zhi2[0].filename;
    fs.renameSync(oldpath,newpath);
    zhi1.touxiang = "/public/picture/" + zhi2[0].filename;
    const sql=`UPDATE user SET img="${zhi1.touxiang}",username="${zhi1.username}",text="${zhi1.usertxt}"   WHERE email="${zhi1.email}"; `
    const data = await this.app.mysql.query(sql);
    return data;
  }
}
module.exports = HomeService;