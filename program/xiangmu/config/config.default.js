/* eslint valid-jsdoc: "off" */

'use strict';

/**
 * @param {Egg.EggAppInfo} appInfo app info
 */
module.exports = appInfo => {
  /**
   * built-in config
   * @type {Egg.EggAppConfig}
   **/
  const config = exports = {};


  config.mysql={
  client:{
  host:'localhost',
  port:'3306',
  user:'root',
  password:'root',
  database:'person'
  }
  };

  config.multipart = {
  mode: 'file',
   };

   config.security={
    csrf:{
      enable:false
    }
  }

   exports.security = {
    csrf: {
      enable: false,
    }
  };
  //post 传输文件大小限制
  exports.bodyParser = {
    jsonLimit: '5mb',
    formLimit: '6mb',
  };

  // config.security = {  //白名单和上面这个post安全传输不可以同时的设置
  // domainWhiteList:[],
  // };

  // use for cookie sign key, should change to your own and keep security
  config.keys = appInfo.name + '_1606281961039_9608';

  // add your middleware config herecls
  config.middleware = [];

  // add your user config here
  const userConfig = {
    // myAppName: 'egg',
  };

  return {
    ...config,
    ...userConfig,
  };
};
