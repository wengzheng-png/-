'use strict';

/**
 * @param {Egg.Application} app - egg application
 */
module.exports = app => {
  const { router, controller } = app;
  // router.get('/', controller.home.index);


  router.post('/host', controller.wzhome.hostinfo);

  router.get('/shopjk', controller.wzhome.shopinfo);
  
  router.post('/shopup', controller.wzhome.shopup);//管理员的接口

  router.post('/delshop', controller.wzhome.delshop);//删除商品

  router.get('/users', controller.wzhome.users);//查询所有的用户信息

  router.post('/usid', controller.wzhome.usid);//删除用户的信息

  router.post('/updeteuser', controller.wzhome.updeteuser);//修改的用户的信息
  

  //ranqing
  router.post('/person', controller.personcenterrj.quzhi);//导入用户的信息
  
  router.post('changeperson', controller.changeperson.change);//更改用户信息

  //zhoameng
  router.post('opping', controller.zmhome.shopping);

  router.post('/load', controller.zmhome.load);

  //wushan
  router.post('/goods', controller.wsindex.goods);


  //yanrui
  router.post('/register', controller.yrhome.register);//注册接口 

  router.get('/getVerif', controller.yrhome.getVerif);//获取验证码接口

  router.post('/login', controller.yrhome.login);//登录接口

  


};
