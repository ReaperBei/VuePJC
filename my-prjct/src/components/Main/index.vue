<template>
  <div>
    <el-table :data="Lists">
      <el-table-column type="index" prop="index" label="序号" width="80"></el-table-column>
      <el-table-column prop="create_at" label="日期" width="140"></el-table-column>
      <el-table-column prop="name" label="姓名" width="120"></el-table-column>
      <el-table-column prop="site" label="地址"></el-table-column>
      <el-table-column label="操作">
        <template slot-scope="scope">
          <div>查看</div>
          <div>修改</div>
          <div  @click.prevent="deleteRow(([scope.row.id,scope.$index]), Lists)">删除</div>
          <div>{{scope.row.id}}</div>
          <router-link :to="'/particulars/'+scope.row.id"><div>详情</div></router-link>
        </template>
      </el-table-column>
    </el-table>
  </div>
</template>
<script>
import axios from 'axios'
import {getHost} from 'api/request.js'
export default {
    data () {
        const item = {
            date: '2016-05-02',
            name: '王小虎',
            address: '上海市普陀区金沙江路 1518 弄'
        }
        return {
            tableData: Array(7).fill(item),
            list: [],
            Lists: [],
            dates: ''
        }
    },
    methods: {
        deleteRow ([index, indexs], rows) {
            // rows.splice(index, 1)
            let idx = index
            axios({
                method: 'get',
                url: 'http://localhost:4500/dltlist',
                params: {
                    id: idx
                }
            }).then((res) => {
                if (res.status === 200) {
                    rows.splice(indexs, 1)
                    console.log(res.message)
                }
            })
        }
    },
    mounted () {
    // axios({
    //   method: 'get',
    //   url: 'http://localhost:4500/lists'
    // }).then((res) => {
    //   .data.data.create_at
    //   }if (res.status === 200) {
    //     this.list = res.data.data
    //     res
    // })
        getHost((data) => {
            this.Lists = data.data
            this.list = data.data
        })
    }
}
</script>
<style>
.el-table{
    color: #ffffff;
}
.el-table th,.el-table tr:nth-child(odd){
    background-color: #99a9bf;
}
.el-table tr:nth-child(even){
    background-color: #b3c0d1;
}
.el-table--enable-row-hover .el-table__body tr:hover>td{
    background-color: orange;
}
.el-table thead{
    color: #ffffff;
}
/* .el-table tr:hover{
    background-color: blue;
 } */
</style>
