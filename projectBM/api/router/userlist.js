var db = require('../db/db')

module.exports = {
    user:function(app){
        app.post('/user',function(req,res){
            console.log(req.body)
            var date = new Date();
            //时分秒
            var str = date.toString();
            var tim = str.slice(16,24);
            // 年月日
            var dat = date.toLocaleDateString();
            dat = dat.replace(/\//g,'-');
            var time = dat +  ' ' +tim 
            
            db.insert(`insert into userlist(username,password,phone,address,add_time,head_img) 
                        values('${req.body.phone}','${req.body.password}','${req.body.phone}','广州千锋1707第四组','${time}','http://www.snowcoal.com/image/portrait/default_header.jpg')`,function(result){
                res.send(result)
            })
        })

        app.get('/getuser',function(req,res){
            db.select(`select id,username,phone,address,add_time,head_img from userlist`,function(result){
                res.send(result)
            })
        })

        app.get('/check_user',function(req,res){
            console.log(req.query)
            var phone = req.query.phone ;
            var password = req.query.password ;
            db.select(`select id,
                        username,
                        password,
                        phone,
                        address,
                        add_time,
                        head_img from userlist where phone='${phone}'`,function(result){
                    if(result.data.results.length == 0){
                        res.send('false')
                    }else{
                        if(result.data.results[0].password == password){
                            res.send(result)
                        }else{
                            res.send('false')
                        }
                    }
            })
        })

        app.post('/delete_user',function(req,res){
            console.log(req.body)
            db.delete(`delete from userlist where id ='${req.body.id}'`,function(result){
                res.send(result)
            })
        })
    }
}