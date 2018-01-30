var mysql = require('mysql')

var db  = mysql.createPool({
    connectionLimit:10,
    host:"10.3.136.62",
    user:'root',
    password:'',
    database:'zhi_er'
})

module.exports = {
    select:function(_sql,_callback){
        db.query(_sql,function(error,results,fields){
            if(error){
                _callback({status:false,error:error})
            }else{
                _callback({status:true,data:{results,fields}})
            }
        })
    },
    insert:function(_sql,_callback){
        db.query(_sql,function(error,results,fields){
            if(error){
                _callback({status:false,error:error})
            }else{
                _callback({status:true,data:{results,fields}})
            }
        })
    },
    delete:function(_sql,_callback){
        db.query(_sql,function(error,results,fields){
            if(error){
                _callback({status:false,error:error})
            }else{
                _callback({status:true,data:{results,fields}})
            }
        })
    },
    update:function(_sql,_callback){
        db.query(_sql,function(error,results,fields){
            if(error){
                _callback({status:false,error:error})
            }else{
                _callback({status:true,data:{results,fields}})
            }
        })
    }
}