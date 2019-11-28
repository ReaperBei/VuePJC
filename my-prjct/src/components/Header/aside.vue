<template>
    <el-aside>
      <el-menu :default-openeds="['1', '4']">
        <router-link to="/">
          <el-submenu index="1">
            <template slot="title">
              <i class="el-icon-message"></i>导航一
            </template>
            <el-menu-item-group>
              <router-link to="/Hadr">
                <el-menu-item index="1-1">选项1</el-menu-item>
              </router-link>
              <router-link to="/Mainer">
                <el-menu-item index="1-2">选项2</el-menu-item>
              </router-link>
            </el-menu-item-group>
          </el-submenu>
        </router-link>
        <el-submenu index="2">
          <template slot="title">
            <i class="el-icon-menu"></i>导航二
          </template>
          <el-menu-item-group>
            <el-menu-item index="2-1">选项1</el-menu-item>
            <el-menu-item index="2-2">选项2</el-menu-item>
          </el-menu-item-group>
        </el-submenu>
        <el-submenu index="3">
          <template slot="title">
            <i class="el-icon-setting"></i>导航三
          </template>
          <el-menu-item-group>
            <el-menu-item index="3-1">选项1</el-menu-item>
            <el-menu-item index="3-2">选项2</el-menu-item>
          </el-menu-item-group>
        </el-submenu>
        <el-submenu index="4">
          <template slot="title">
            <i class="el-icon-setting"></i>导航四
          </template>
          <el-menu-item-group>
            <el-menu-item index="4-1">选项1</el-menu-item>
            <el-menu-item index="4-2">选项2</el-menu-item>
          </el-menu-item-group>
        </el-submenu>
      </el-menu>
    </el-aside>
</template>
<script>
export default {}
</script>
<style lang="">
</style>
