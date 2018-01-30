var db = require('../db/db')

module.exports = {
    order:function(app){
        app.get('/order',function(req,res){
            db.select(`select goods_detail from order_item where goods_detail = '${req.query.list}'`,function(result){
                    if(result.data.results.length == 0){
                        db.select(`INSERT order_item (goods_detail,username,qty,type)
                                    values('${req.query.list}','${req.query.username}',1,0)`,function(result){
                            res.send(result)
                        })
                    }else if(result.data.results.length > 0){
                        res.send('false')
                    }
                
            })
            
        })

        app.get('/getorder',function(req,res){
            console.log(req.query)
            db.select(`select * from order_item where username = '${req.query.username}'`,function(result){
                res.send(result);
            })
        })

        app.get('/order_type',function(req,res){
            console.log(req.query)
            req.query.id.forEach(function(item){
                db.update(`UPDATE order_item SET type = '${req.query.type}' WHERE id = ${item} `,function(result){
                })
            })
            res.send('ok')
        })

        app.post('/delete_order',function(req,res){
            console.log(req.body)
            console.log(req.body.id)
            db.delete(`delete from order_item where id ='${req.body.id}'`,function(result){
                res.send(result)
            })
        })
    }
}