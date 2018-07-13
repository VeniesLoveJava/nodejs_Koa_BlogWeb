const fs = require('fs');
const router = require('koa-router')();
const timeGetter = require('../utils/timeGetter');
const sqlUser = require('../lib/mysql');
const session = require('koa-session-minimal');
let mesLength2 ;

router.get('/HomePage',async (ctx)=>{
    //记录访客量
    let ip = ctx.request.socket["remoteAddress"];
    let currentTime = timeGetter.getServerDate();
    let path = '/HomePage.html' ;
    let value =[path,ip,currentTime]; 
    if(ctx.session){
        await  ctx.render('homePage',{
            session : ctx.session
        })
    }else{
        await ctx.render('homePage',{
            session : null
        })
    }
    sqlUser.addVisit(value);
    sqlUser.getAllMesCount().then(result=>{
        mesLength2 = result['count(message)'];
    })
})

//获取服务器时间
router.get('/sysTime_wenzhiqun', ctx => {
    ctx.body = (timeGetter.getServerTime()).toString();
})

//获取留言栏
router.get('/message/list', async(ctx) => {
    let mesLength = 0;
    let message = [];
    await sqlUser.getAllMes().then(result =>{
        for(i of result){
            message[mesLength]=i.message;
            mesLength++;
        }
    })
    let messageShow = '留言栏:';
    //普通用户
    if(ctx.session.role != 'admin'){
        if(message.length<=10){
            for(let i = message.length,j=1;i>0;i--){
                messageShow = messageShow+'<br>'+'('+j+')'+message[i-1];
                j++;
            }
        }else if(message.length>10){
            for(let i = message.length,j=1;i>(message.length-10);i--){
                messageShow = messageShow+'<br>'+'('+j+')'+message[i-1];
                j++;
            }
        }
    }else{
        if(message.length<=10){
            for(let i = message.length,j=1;i>0;i--){
                messageShow = '<table style="text-align: left"><tr><th>'+messageShow+'</th><th></th><th></th></tr>'+'<tr><td>('+j+')</td><td><p id="'+j+'">'+message[i-1]+'</p></td><td><button onclick = deleteMes('+j+')>删除留言</button></td></tr>';
                j++;
            }
        }else if(message.length>10){
            for(let i = message.length,j=1;i>(message.length-10);i--){
                messageShow = '<table style="text-align: left"><tr><th>'+messageShow+'</th><th></th><th></th></tr>'+'<tr><td>('+j+')</td><td><p id="'+j+'">'+message[i-1]+'</p></td><td><button onclick = deleteMes('+j+')>删除留言</button></td></tr>';
                j++;
            }
        }
        messageShow = messageShow +'</table>';
    }
    mesLength2 = mesLength;
    ctx.body = messageShow;
})

//获取客户端信息
router.get('/sysinfo', ctx => {
    let ob = ctx.request.headers["user-agent"].split(" ");
    let system = ob[1].substring(1);
    let chrome = ob[9].split('/')[0];
    let ip = ctx.request.socket["remoteAddress"];
    let iptype = ctx.request.socket["remoteFamily"];
    ctx.body = "<b>操作系统：</b>"+system+"  <b>浏览器：</b> "+chrome+"<b>ip地址：</b> "+ip+" <b>ip类型：</b> "+iptype;
})

//获取访问量
router.get('/visit',async (ctx) => {
    await sqlUser.getVisitCount()
    .then(result =>{
        let arr = [];
        let day_vi = 0;
        let today_date = timeGetter.getServerDate(); 
        for(i of result){
            arr.push(i.login_time);
        }
        // 访问总量
        let vi = arr.length;
        for (let i = 0; i<arr.length;i++){
            if(arr[i] == today_date){
                day_vi++;
            }
        }
        ctx.body = "当前页面总访问量为："+vi+"次"+"\n今日访客量为："+day_vi+"次";
    });
})

// 提交留言
router.post('/message',async (ctx) =>{
    let userMes = ctx.request.body.message;
    let sqlParams = [mesLength2+1,userMes];
    await sqlUser.insertMes(sqlParams).then(result=>{
        ctx.body = "成功了！";
    });
});

//删除留言
router.post('/deleteMes',async (ctx) =>{
    let userMes = ctx.request.body.message;
    let sqlParams = [userMes];
    await sqlUser.deleteMes(sqlParams).then(result=>{
        ctx.body = "删除成功！";
    });
});


//登陆
router.post('/login',async (ctx) =>{
    let username = ctx.request.body.profile;
    let pwd = ctx.request.body.pwd;
    let user = {'username':username};
    await sqlUser.findDataByUser(username,pwd).then( result=>{
        if(result[0]){
            user['role'] = result[0].role;
            ctx.session = user;
            ctx.body = '2';
        }else{
            ctx.body = '1' ;
        }
    })
})

//登录引导页
router.get('/',async ctx =>{
    if(JSON.stringify(ctx.session) =='{}'){
        await ctx.render('login');
    }else{
        await ctx.render('homePage',{
            session : ctx.session
        });
    }
})

//登出
router.get('/clearSession',async (ctx) =>{
    let clear = function(){
        ctx.session = null;
    }
    clear();
    await ctx.render('login');
})

//注册
router.post('/register',async(ctx) =>{
    let profile = ctx.request.body.profile;
    let pwd = ctx.request.body.pwd;
    let username = ctx.request.body.username;
    let create_time = timeGetter.getServerDate();
    let role = 'normal_user';
    let value = [profile,pwd,username,role,create_time];
    await sqlUser.insertUser(value).then(result=>{
        if(result){
            let user = {username:username,role:role};
            ctx.session = user;
            console.log(ctx.session);
            ctx.body = "1";
        }else{
            ctx.body = '2';
        }
    })
})

module.exports = router;
