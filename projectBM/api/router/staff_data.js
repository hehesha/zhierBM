var db = require('../db/db')

module.exports = {
    staff:function(app){
        app.get('/checkname',function(req,res){
            // console.log(req.query)
            db.select(`SELECT * FROM staff_data WHERE staff_name = '${req.query.name}'`,function(result){
                res.send(result)
            })
        });

        app.post('/checkall',function(req,res){
            var name = req.body.name;
            var password = req.body.pwd;
            // console.log(name)
            db.insert(`insert into staff_data(
                staff_name,
                staff_password,
                availability
                )
            values(
                '${name}',
                '${password}',
                0
            );`,function(result){
                res.send(result)
            })
        });

        app.get('/logincheck',function(req,res){
            var name = req.query.name;
            var password = req.query.password;

            db.select(`SELECT staff_name FROM staff_data WHERE staff_name = '${name}';`,function(result){
                res.send(result);
            })
        });

        app.get('/login',function(req,res){
            var name = req.query.name;
            var password = req.query.password;

            db.select(`SELECT staff_password FROM staff_data where staff_name = '${name}';`,function(result){
                if(result.data.results[0].staff_password == password){
                    res.send('password_confirm')
                }else{
                    res.send('password_error')
                }
            })
        })

        app.get('/allstaff',function(req,res){
            db.select(`select * from staff_data`,function(result){
                res.send(result)
            })
        })

        app.post('/delete_staff',function(req,res){
            console.log(req.body)
            db.delete(`delete from staff_data where _id ='${req.body.id}'`,function(result){
                res.send(result)
            })
        })
    }
}