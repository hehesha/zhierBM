var db = require('../db/db')

module.exports = {
    caution:function(app){
        app.get('/caution',function(req,res){
            // console.log(req.query);
            db.select('SELECT * FROM caution',function(result){
                res.send(result.data);
            })
        })
    }
}