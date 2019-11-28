<template>
  <div>
    <el-row>
      <el-col :span="24">
        <div class="grid-content bg-purple-dark hom-flex">
          <div>
            <img src="../../assets/logo.png" alt />
          </div>
        </div>
      </el-col>
    </el-row>
      <el-container>
        <Aside />
        <el-main>
          <router-view />
          <!-- <router-view  name="Axides"/> -->
        </el-main>
      </el-container>
  </div>
</template>

<script>
import HadeMain from './header.vue'
import Aside from './aside'
export default {
    components: {
        HadeMain,
        Aside
    }
}
</script>

<style lang='scss'>
// $--color-primary: red;
// $--font-path: "~element-ui/lib/theme-chalk/fonts";
// @import "~element-ui/packages/theme-chalk/src/index";
// .el-date-editor.el-input,.el-date-editor.el-input__inner {
//     width: 100%;
// }
  .el-col,.grid-content{
    border-radius:0px;
  }
  .el-submenu__title:focus,.el-submenu__title:hover{
    background-color: #99a9bf ;
  }
  .el-submenu__title:hover{
      background-color:#99a9bf;
  }
  .el-menu-item:focus, .el-menu-item:hover{
     background-color:#99a9bf;
  }
  .hom-flex{
    display: flex;
    align-items: center;
  }
  .el-aside {
    color: #333;
  }
  /* .dialogFormVis{
    z-index: 99999;
  }   */
</style>
