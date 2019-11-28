<template>
    <el-container>
      <el-header style="text-align: right; font-size: 12px">
        <template>
          <el-button type="text" @click="dialogFormVisible = true">新增</el-button>
          <el-dialog title="请新增的内容" :visible.sync="dialogFormVisible">
            <el-form :model="form" :rules="rules" ref="ruleForm">
              <el-form-item label="日期" prop="value1" :label-width="formLabelWidth">
                <el-date-picker v-model="form.value1" type="date" placeholder="选择日期"></el-date-picker>
              </el-form-item>
              <el-form-item prop="name" label="名字" :label-width="formLabelWidth">
                <el-input v-model="form.name" autocomplete="off"></el-input>
              </el-form-item>
              <el-form-item label="地址" prop="dizhi" :label-width="formLabelWidth">
                <el-input v-model="form.dizhi" autocomplete="off"></el-input>
              </el-form-item>
            </el-form>
            <div slot="footer" class="dialog-footer">
              <el-button @click="dialogFormVisible = false">取 消</el-button>
              <el-button type="primary" :plain="true" @click="submitForm('ruleForm')">立即创建</el-button>
            </div>
          </el-dialog>
        </template>
        <el-dropdown>
          <i class="el-icon-setting" style="margin-right: 15px"></i>
          <el-dropdown-menu slot="dropdown">
            <el-dropdown-item>查看</el-dropdown-item>
            <el-dropdown-item></el-dropdown-item>
            <el-dropdown-item>删除</el-dropdown-item>
          </el-dropdown-menu>
          <span>王二麻</span>
          <router-view name="Header"></router-view>
          <router-link to="/Loin">个人中心</router-link>
          <router-view name="Axide"></router-view>
        </el-dropdown>
      </el-header>
      <Main />
      <!-- <el-main>
        <router-view />
        <router-view  name="Axides"/>
      </el-main> -->
    </el-container>
</template>
<script>
import moment from 'moment'
import axios from 'axios'
import Main from '@/components/Main/index.vue'
export default {
    data () {
        return {
            dialogFormVisible: false,
            form: {
                name: '',
                dizhi: '',
                value1: ''
            },
            rules: {
                name: [
                    { required: true, message: '请输入活动名称', trigger: 'blur' },
                    { min: 3, max: 5, message: '长度在 3 到 5 个字符', trigger: 'blur' }
                ],
                value1: [
                    { type: 'date', required: true, message: '请选择日期', trigger: 'change' }
                ],
                dizhi: [
                    { required: true, message: '请填地址', trigger: 'blur' }
                ]
            },
            formLabelWidth: '120px',
            pickerOptions: {
                disabledDate (time) {
                    return time.getTime() > Date.now()
                },
                shortcuts: [{
                    text: '今天',
                    onClick (picker) {
                        picker.$emit('pick', new Date())
                    }
                }, {
                    text: '昨天',
                    onClick (picker) {
                        const date = new Date()
                        date.setTime(date.getTime() - 3600 * 1000 * 24)
                        picker.$emit('pick', date)
                    }
                }, {
                    text: '一周前',
                    onClick (picker) {
                        const date = new Date()
                        date.setTime(date.getTime() - 3600 * 1000 * 24 * 7)
                        picker.$emit('pick', date)
                    }
                }]
            },
            value1: ''
        }
    },
    methods: {
        submitForm (formName) {
            this.$refs[formName].validate((valid) => {
                if (valid) {
                    let value2 = moment(this.form.value1).format('YYYY-MM-DD')
                    axios({
                        method: 'get',
                        url: 'http://localhost:4500/addlist',
                        params: {
                            name: this.form.name,
                            site: this.form.dizhi,
                            create_at: value2
                        }
                    }).then((res) => {
                        if (res.status === 200) {
                            this.$message({
                                message: res.message,
                                type: 'success'
                            })
                            this.form.name = ''
                            this.form.dizhi = ''
                            this.form.value1 = ''
                        }
                    })
                } else {
                    return false
                }
            })
        }
    },
    components: {
        Main
    }
}
</script>
<style>
.el-header {
  background-color: #b3c0d1;
  color: #333;
  line-height: 60px;
}
.el-date-editor.el-input,.el-date-editor.el-input__inner {
    width: 100%;
}
</style>
