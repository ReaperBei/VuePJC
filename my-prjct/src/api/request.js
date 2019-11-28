import sendaxios from './axios.js'
let getHost = function (callback) {
  sendaxios('get', '/lists').then((res) => {
    callback(res)
  })
}
let addlist = function (callback) {
  sendaxios('get', '/addlist').then((res) => {
    callback(res)
  })
}
export {
  getHost,
  addlist
}
