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
  
};
