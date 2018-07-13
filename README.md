项目运行启动入口为index.js
打开浏览器，访问localhost:3000/
管理员账号：123456@qq.com  密码：123456
普通账号：654321@qq.com  密码：123456

*初始化数据库脚本保存在lib文件夹中：
需重新配置一下本机的mysql的连接账号密码，在index.js文件中
var connection = mysql.createConnection({     
  host     : 'localhost',       
  user     : 'root',              
  password : '1234',       
  port: '3306',                   
  database: 'mysql', 
}); 