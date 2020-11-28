'use strict';

/**
 * @param {Egg.Application} app - egg application
 */
module.exports = app => {
  const { router, controller } = app;
  // router.get('/', controller.home.index);


  router.post('/host', controller.wzhome.hostinfo);

  router.get('/shopjk', controller.wzhome.shopinfo);
  
  router.get('/shopup', controller.wzhome.shopup);//管理员的接口
};
