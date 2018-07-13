let time = new Date();
let year = time.getFullYear();
let month = time.getMonth()+1;
let date = time.getDate();
let hour = time.getHours();
let minutes = time.getMinutes();
let seconds = time.getSeconds();

let currentDate = year+'-'+month+'-'+date;

if(month<10){
    month = '0'+month;
}
if(date<10){
    date = '0'+date;
}
if(hour<10){
    hour = '0'+hour;
}
if(minutes<10){
    minutes = '0'+minutes;
}
if(seconds<10){
    seconds = '0'+seconds;
}
let currentTime = "当前服务器时间为："+year+"年"+month+"月"+date+"日"+hour+":"+minutes+":"+seconds;

let getServerTime = function (){
    return currentTime;
}

let getServerDate = function (){
    return currentDate;
}
module.exports = {getServerTime,getServerDate};