let querys = require('../mysql/mysql')
module.exports = {
    isRegister:async function(data){
        let sql = 'insert into list(name,site,create_at) values(?) '
        let regIs = await querys(sql,[data]).catch(function(res){
            console.log(res)
        })
        if(regIs){
            return true
        }else{
            return false
        }
    }
}