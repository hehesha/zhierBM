var db = require('../db/db')

module.exports = {
    activity:function(app){
        app.get('/activity',function(req,res){
            var activity = req.query.activity;
            db.select(`SELECT * from carousel `,function(result){
                res.send(result);
            })
        })
    }
}