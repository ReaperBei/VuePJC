let querys = require('./mysql/mysql.js')
let datas =require('./common/data.js')
let moment = require('moment')
module.exports = {
    list (req,res){
        let sql = 'select * from list'
        querys(sql).then(function (resulst){
            res.json({
                status: 200,
                data: resulst,
                message: '成功'
            })
        }).catch(function (error) {
            res.json({
                status: 201,
                message: '失败'
            })
        })
    },
    async addlist(req,res){
        let params = req.query
        let isRegister = await datas.isRegister([params.name,params.site,params.create_at])
        if(isRegister){
            res.json({
                status:200,
                message:'恭喜信息添加，成功！'
            })
        }else{
            res.json({
                status:511,
                message:'服务器错误'
            })
        }
        console.log(params)
    },
    dltlist (req,res){
        let params = req.query
        let data =params.id
        let sql = 'DELETE FROM list WHERE id=?'
        querys(sql,[data]).then(function(){
            res.json({
                status: 200,
                message: '成功'
            })
        }).catch(function(error){
            res.json({
                status:512,
                message:'删除失败'
            })
        })
    }
}