var mysql = require('mysql');
var config = require('../config/default.js')

var pool  = mysql.createPool({
  host     : config.database.HOST,
  user     : config.database.USERNAME,
  password : config.database.PASSWORD,
  database : config.database.DATABASE
});

let query = function( sql, values ) {

  return new Promise(( resolve, reject ) => {
    pool.getConnection(function(err, connection) {
      if (err) {
        resolve( err )
      } else {
        connection.query(sql, values, ( err, rows) => {

          if ( err ) {
            reject( err )
          } else {
            resolve( rows )
          }
          connection.release()
        })
      }
    })
  })

}

// 提交留言
let insertMes = function(value) {
  let _sql = "INSERT INTO MyOwnPage_messageBox (messageCount,message) value (?,?) "
  return query( _sql, value )
}
// 删除留言
let deleteMes = function(value) {
  let _sql = "DELETE FROM MyOwnPage_messageBox WHERE message = ?"
  return query( _sql, value )
}

// 获取所有的留言总量
let getAllMesCount = function() {
  let _sql = "SELECT count(message) FROM MyOwnPage_messageBox"
  return query( _sql)
}

// 获取所有的留言
let getAllMes = function() {
  let _sql = "SELECT message FROM MyOwnPage_messageBox"
  return query( _sql)
}

// 查询访客量
let getVisitCount = function() {
  let _sql = "SELECT login_time FROM login_log"
  return query( _sql)
}

//增加访客量
let addVisit = function(value) {
  let _sql = "INSERT INTO login_log (page,ip,login_time) value (?,?,?) ";
  return query( _sql, value);
}

//通过账户名密码查询登陆id及角色
let findDataByUser = function (profile,pwd) {
  let _sql = `SELECT username, role FROM USER_PROFILE WHERE email = "${profile}"`
  return query( _sql)
}

//新增（注册）用户
let insertUser = function(value) {
  let _sql = "INSERT INTO user_profile (email,pwd,username,role,create_time) value (?,?,?,?,?) ";
  return query( _sql, value );
}

module.exports={
    insertMes,
    deleteMes,
    getAllMes,
    findDataByUser,
    getVisitCount,
    addVisit,
    getAllMesCount,
    insertUser
}