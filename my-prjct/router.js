let express = require('express')
let router = require('./router/index.js')
let bodyParser =require('body-parser')
let lencodeParser = bodyParser.urlencoded({extended:false})
let app = express()

app.all('*', function(req, res, next) {
    //设为指定的域
    res.header('Access-Control-Allow-Origin', "*");
    res.header("Access-Control-Allow-Headers", "X-Requested-With");
    res.header('Access-Control-Allow-Headers', 'Content-Type');
    res.header("Access-Control-Allow-Methods", "PUT,POST,GET,DELETE,OPTIONS");
    res.header('Access-Control-Allow-Credentials', true);
    res.header("X-Powered-By", ' 3.2.1');
    next();
  })
app.get('/lists',router.list)
app.get('/addlist',router.addlist)
app.get('/dltlist',router.dltlist)
app.listen(4500)