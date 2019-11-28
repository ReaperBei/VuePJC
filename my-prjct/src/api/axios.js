import axios from 'axios'
import {api} from './index.js'
import qs from 'qs'
function sendaxios(methods ='get'||'post',url,data={}){
    return new Promise((resolve,resjects) => {
        // axios({
        //     methods:methods,
        //     url: api +url,
        //     data: qs.stringify(data)
        // }).then(function(){
        //     res=res.data,
        //     resolve(res)
        // }).catch((res)=>{
        //     resjects('网络错误LA')
        // })
        axios({
            methods:methods,
            url: api +url,
            data: qs.stringify(data)
        }).then(function(res){
            res=res.data,
            resolve(res)
        }).catch((res)=>{
            resjects('网络错误啦！')
        })
    })
}
export default sendaxios