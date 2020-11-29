const Service = require('egg').Service;
var fs = require("fs")
class HomeService extends Service {
  async isContainUser(arg) {
    const sql = `select * from user where email = "${arg.email}"`
    console.log(sql);
    const data = await this.app.mysql.query(sql);
    return data;
  }
  async register(arg, arg2) {
    // 把数据处理为sql（图片网址保存到数据库）
    if (arg2[0]) {
      var oldpath = arg2[0].filepath
      var newpath = __dirname + "/../public/yrimg/" + arg2[0].filename
      fs.copyFileSync(oldpath, newpath)
      arg.img = "/public/yrimg/" + arg2[0].filename
    }else{
      arg.img = "/public/yrimg/default.jpg"
    }

    var sql = `insert into user (username,email,pwd,sex,img,text)values("${arg.username}","${arg.email}","${arg.pwd}","${arg.sex}","${arg.img}","${arg.text}")`
    console.log(sql);
    var data = await this.app.mysql.query(sql);
    return data;
  }
  async login(arg){
    var sql = `select * from user where email = "${arg.email}" and "${arg.pwd}"`
    var re = await this.app.mysql.query(sql)
    return re
  }
}
module.exports = HomeService;