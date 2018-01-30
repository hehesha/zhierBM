var db = require('../db/db')

module.exports = {
    address:function(app){
        app.get('/getaddress',function(req,res){
            console.log(req.query);
            db.select(`SELECT * FROM address_in_order where phone = '${req.query.phone}'`,function(result){
                res.send(result);
            })
        })

        app.post('/insert_address',function(req,res){
            console.log(req.body);
            db.insert(`insert into address_in_order(phone,name,relation,localarea,address)
            values('${req.body.phone}',
                    '${req.body.name}',
                    '${req.body.relation}',
                    '${req.body.localarea}',
                    '${req.body.address}')`,function(result){
                res.send(result)
            })
        })
    }
}