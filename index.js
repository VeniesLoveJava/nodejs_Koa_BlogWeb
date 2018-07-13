const koa = require('koa');
const app = new koa();
const static = require('koa-static');
const index = require('./routes/index');
const views = require('koa-views');
const bodyParser = require('koa-bodyparser');
var MysqlStore = require('koa-mysql-session');
const session = require('koa-session-minimal');
const config = require('./config/default.js');
const ejs = require('ejs');
const path = require('path');

//静态资源加载
app.use(static(__dirname+'/public'));
//视图调用
// app.use(views(__dirname+'/views'));
app.use(views(path.join(__dirname, './views'), {
    extension: 'ejs'
}))

// session存储配置
const sessionMysqlConfig= {
    user: config.database.USERNAME,
    password: config.database.PASSWORD,
    database: config.database.DATABASE,
    host: config.database.HOST,
}
  
  // 配置session中间件
app.use(session({
    key: 'USER_SID',
    store: new MysqlStore(sessionMysqlConfig)
}))

app.use(bodyParser());

//这里的 allowedMethods 用于校验请求的方法，如果用 post 请求访问 get 接口，就会直接返回失败
app.use(index.routes(),index.allowedMethods());


app.listen(3000,function(){
    console.log("项目已经启动");
});