let mysql = require('mysql')
let config =require('./config/index.js')
let pool = mysql.createPool(config.mysql)
let querys =function(sql,data){
    return new Promise(function(resolve,reject){
        pool.getConnection(function(err,conection){
            if(!err){
                conection.query(sql,data,function(error,result){
                    if(!error){
                        resolve(result)
                    }else{
                        reject(error)
                    }
                    conection.release()
                })
            }else {
                reject(err)
            }
        })
    })
}
module.exports = querys