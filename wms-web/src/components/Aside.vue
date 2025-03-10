<template>
  <el-menu
      background-color="#505c69"
      text-color="#fff"
      active-text-color="#abccff"
      :class="['custom-aside', { 'el-menu--collapse': isCollapse }]"
      default-active="/Home"
      :collapse="isCollapse"
      :collapse-transition="false"
      router
  >
    <el-menu-item
        index="/Home"
        class="menu-item"
    >
      <i class="el-icon-s-home menu-icon"></i>
      <span slot="title" class="menu-text">首页</span>
    </el-menu-item>

    <el-menu-item
        v-for="(item,i) in menu"
        :key="i"
        :index="'/'+item.menuclick"
        class="menu-item"
    >
      <i :class="item.menuicon" class="menu-icon"></i>
      <span slot="title" class="menu-text">{{item.menuname}}</span>
    </el-menu-item>
  </el-menu>
</template>

<script>
export default {
  name: "Aside",
  data() {
    return {};
  },
  computed: {
    menu: {
      get() {
        return this.$store.state.menu;
      }
    }
  },
  props: {
    isCollapse: Boolean
  }
}
</script>

<style scoped>
/* 全局滚动控制 */
body {
  overflow-y: auto;  /* 允许垂直滚动 */
  overflow-x: hidden; /* 禁止水平滚动 */
}

/* 侧边栏容器 */
.custom-aside {
  position: fixed;
  left: 0;
  top: 0;
  bottom: 0;
  z-index: 1000;
  transition: width 0.3s ease;
  width: 200px;
  overflow-y: auto;  /* 允许垂直滚动 */
  overflow-x: hidden; /* 禁止水平滚动 */
  box-shadow: 2px 0 6px rgba(0, 0, 0, 0.1);
  height: 100vh;     /* 全屏高度 */
}

.custom-aside::-webkit-scrollbar {
  width: 6px; /* 滚动条宽度 */
}

.custom-aside::-webkit-scrollbar-thumb {
  background: #666; /* 滚动条滑块颜色 */
  border-radius: 3px;
}

.custom-aside.el-menu--collapse {
  width: 64px;
}

/* 菜单项样式 */
.menu-item {
  height: 48px;
  margin: 4px 8px;
  padding: 0 12px !important;
  border-radius: 4px;
  display: flex;
  align-items: center;
  transition: all 0.2s;
  min-width: 160px; /* 防止折叠时变形 */
}

.menu-item:hover {
  background-color: #434a50 !important;
}

.menu-item.is-active {
  background-color: #393f44 !important;
}

.menu-item.is-active::before {
  content: "";
  position: absolute;
  left: 0;
  top: 50%;
  transform: translateY(-50%);
  height: 60%;
  width: 3px;
  background-color: #abccff;
}

/* 图标和文字样式 */
.menu-icon {
  font-size: 18px;
  margin-right: 12px;
  flex-shrink: 0;
}

.menu-text {
  font-size: 14px;
  white-space: nowrap;
}

/* 折叠状态样式 */
.el-menu--collapse {
  .menu-item {
    padding: 0 18px !important;
    margin: 4px 0;
    min-width: auto; /* 允许缩小宽度 */
  }
  .menu-icon {
    margin-right: 0;
  }
  .menu-text {
    display: none;
  }
}

/* 响应式处理 */
@media screen and (max-width: 768px) {
  .custom-aside:not(.el-menu--collapse) {
    width: 180px;
  }
}
</style>