'use strict';
const Controller = require('egg').Controller;
class PerController extends Controller {
  async change() {
    const { ctx } = this;
    ctx.body = '';
  }
}
module.exports = PerController;