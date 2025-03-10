<template>
  <div style="display: flex;line-height: 50px;">
    <div style="margin-top: 8px;">
      <i :class="icon" style="font-size: 20px;cursor: pointer;" @click="collapse"></i>
    </div>
    <div style="flex: 1;text-align: center;font-size: 28px;">
      <span>网络入侵反制决策系统</span>
    </div>
    <el-dropdown>
      <span>{{user.name}}</span><i class="el-icon-arrow-down" style="margin-left: 5px;"></i>
      <el-dropdown-menu slot="dropdown">
        <el-dropdown-item @click.native="toUser">个人中心</el-dropdown-item>
        <el-dropdown-item @click.native="logout">退出登录</el-dropdown-item>
      </el-dropdown-menu>
    </el-dropdown>
  </div>
</template>

<script>
export default {
  name: "Header",
  data(){
    return {
      user : JSON.parse(sessionStorage.getItem('CurUser'))
    }
  },
  props:{
    icon:String
  },
  methods:{
    toUser(){
      console.log('to_user')
      this.$router.push("/Home")
    },
    logout(){
      console.log('logout')
      this.$confirm('您确定要退出登录吗?', '提示', {
        confirmButtonText: '确定',
        type: 'warning',
        center: true,
      })
          .then(() => {
            this.$message({
              type:'success',
              message:'退出登录成功'
            })
            this.$router.push("/")
            sessionStorage.clear()
          })
          .catch(() => {
            this.$message({
              type:'info',
              message:'已取消退出登录'
            })
          })
    },
    collapse(){
      this.$emit('doCollapse')
    }
  },
  created(){
    this.$router.push("/Home")
  }
}
</script>

<style scoped>
/* 新增样式 */
div {
  background-color: #ffffff; /* 深蓝背景 */
  color: #2d3a4b; /* 白色文字 */
  font-family: 'Microsoft YaHei', sans-serif; /* 微软雅黑字体 */
}

span {
  font-weight: 600; /* 加粗字体 */
  letter-spacing: 2px; /* 字间距 */
}

.el-dropdown {
  color: #2d3a4b; /* 下拉菜单文字颜色 */
  margin-right: 20px;
}

.el-icon-arrow-down {
  color: #409EFF; /* 箭头高亮色 */
}

.el-dropdown-menu {
  background-color: #2d3a4b; /* 下拉菜单背景 */
  border: 1px solid #409EFF; /* 蓝色边框 */
}

.el-dropdown-menu__item {
  color: #fff !important; /* 菜单项文字 */
  transition: all 0.3s;
}

.el-dropdown-menu__item:hover {
  background-color: #409EFF !important; /* 悬停高亮 */
}
</style>