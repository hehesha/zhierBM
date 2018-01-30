var db = require('../db/db')

module.exports = {
    sample:function(app){
        app.get('/sample',function(req,res){
            // console.log(req.query)
            db.select('SELECT * FROM goods_data',function(result){
                res.send(result);
            })
        })

        app.get('/detail',function(req,res){
            var _id  = req.query.id || 1;
            db.select(`SELECT * FROM goods_data where id = ${_id}`,function(result){
                res.send(result)
            })
        })

        app.post('/insert',function(req,res){
            // console.log(req.body);
            db.insert(`insert into goods_data(
                    goods_name,
                    goods_trademark,
                    title_name,
                    size,
                    sell_prices,
                    sell_price,
                    goods_info,
                    normal_problem,
                    goods_pto,
                    type)
                values(${req.body.goods_name},
                    ${req.body.goods_trademark},
                    ${req.body.title_name},
                    ${req.body.size},
                    ${req.body.sell_prices},
                    ${req.body.sell_price},
                    ${req.body.goods_info},
                    ${req.body.normal_problem},
                    ${req.body.goods_pto},
                    ${req.body.type});`,function(result){
                res.send(result);
            })
        })

        app.get('/classify',function(req,res){
            // var data = JSON.stringify(req.query).split(':');
            // console.log(req.query)
            db.select(`SELECT * FROM goods_data where type like '%${req.query.type}%' or activity like '%${req.query.type}%';`,function(result){
                res.send(result)
            })
        })

        app.get('/search',function(req,res){
            db.select(`SELECT * FROM goods_data WHERE goods_name like '%${req.query.type}%' 
            or goods_trademark like '%${req.query.type}%' 
            or title_name like '%${req.query.type}%' 
            or type like '%${req.query.type}%' 
            or activity like '%${req.query.type}%';`,function(result){
                res.send(result)
            })
        })

        app.get('/no_id',function(req,res){
            // console.log(req.query)
            db.select(`SELECT goods_name,
                        goods_trademark,
                        title_name,
                        size,
                        sell_prices,
                        sell_price,
                        goods_info,
                        normal_problem,
                        goods_pto,
                        type,
                        activity FROM goods_data;`,function(result){
                res.send(result);
            })
        })

        app.post('/delete_goods',function(req,res){
            console.log(req.body)
            db.delete(`delete from goods_data where id ='${req.body.id}'`,function(result){
                res.send(result)
            })
        })

        app.get('/goods_by_order',function(req,res){
            console.log(req.query)
            if(req.query.order == 'up'){
                db.select(`SELECT * FROM goods_data WHERE type='${req.query.type}' ORDER BY sell_price;`,function(result){
                    res.send(result)
                })
            }else{
                db.select(`SELECT * FROM goods_data WHERE type='${req.query.type}' ORDER BY sell_price DESC;`,function(result){
                    res.send(result)
                })
            }
            
        })
        
    }
}