<template>
  <div class="hello">
    <el-row>
      <el-button>默认按钮</el-button>
      <el-button type="primary">主要按钮</el-button>
      <el-button type="success">成功按钮</el-button>
      <el-button type="info">信息按钮</el-button>
      <el-button type="warning">警告按钮</el-button>
      <el-button type="danger">危险按钮</el-button>
    </el-row>
    <div>
      <template></template>
    </div>
    <div>
      <template>
        <el-radio v-model="radio" label="1">选择一</el-radio>
        <el-radio v-model="radio" label="2">选择二</el-radio>
      </template>
      <template>
        <el-radio disabled v-model="radios" label="禁用">备选项</el-radio>
        <el-radio disabled v-model="radios" label="选中且禁用">备选项</el-radio>
      </template>
      <template>
        <el-radio-group size="mini" v-model="radioi">
          <el-radio :label="3">备选项</el-radio>
          <el-radio disabled :label="4">备选项</el-radio>
          <el-radio name="备选项3" :label="5">备选项</el-radio>
        </el-radio-group>
      </template>
    </div>
    <div>
      <template>
        <el-checkbox v-model="checked">备选项</el-checkbox>
      </template>
    </div>
    <div>
      <template>
        <el-checkbox>全选</el-checkbox>
      </template>
    </div>
  </div>
</template>

<script>
export default {
    data () {
        return {
            radio: '1',
            radios: '选中且禁用',
            radioi: 3,
            checked: true,
            message: [
                {
                    list: 'wewgey'
                },
                {
                    list: 'whewh'
                }
            ]
        }
    }
}
</script>

<style lang='scss'>
</style>
