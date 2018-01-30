var db = require('../db/db')

module.exports = {
    sells:function(app){
        app.post('/sell',function(req,res){
            console.log(req.body);
            db.insert(`insert into sells_goods(goods_trademark,goods_pto,type,availability,default_price)
            values('${req.body.goods_trademark}','${req.body.goods_pto}','${req.body.type}',0,1000)`,function(result){
                res.send(result)
            })
        })

        app.get('/getsell',function(req,res){
            console.log(req.query)
            db.select(`select * from sells_goods`,function(result){
                res.send(result)
            })
        })

        app.post('/delete_sell',function(req,res){
            console.log(req.body)
            var id = req.body.id;
            db.delete(`delete from sells_goods where id ='${id}' `,function(result){
                res.send(result)
            })
        })

    }
}