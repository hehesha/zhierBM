var express = require('express')
var app = express()
var bp = require('body-parser')
var path = require('path')

var goods_data = require('./goods_data')
var caution = require('./caution')
var staff = require('./staff_data')
var activity = require('./activity')
var sells_goods = require('./sells_goods')
var order_item = require('./order_item')
var userlist = require('./userlist')
var address_in_order = require('./address_in_order')

app.use(express.static(path.resolve(__dirname,'../')));
app.use(bp.urlencoded({extended:false}));



module.exports = {
    start:function(_port){
        app.all('*', function(req, res, next) {
            res.header("Access-Control-Allow-Origin", "*");
            res.header("Access-Control-Allow-Headers", "Content-Type,Content-Length, Authorization, Accept,X-Requested-With");
            res.header("Access-Control-Allow-Methods","PUT,POST,GET,DELETE,OPTIONS");
            res.header("X-Powered-By",' 3.2.1')
            if(req.method=="OPTIONS") {
              res.sendStatus(200);/*让options请求快速返回*/
            } else{
              next();
            }
        });

        goods_data.sample(app);
        caution.caution(app);
        staff.staff(app);
        activity.activity(app);
        sells_goods.sells(app);
        order_item.order(app);
        userlist.user(app);
        address_in_order.address(app);

        app.listen(_port,function(){
            console.log('node.js连接成功')
        });
    }
}