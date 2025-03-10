<template>
  <div class="home-container">
    <div class="welcome-section">
      <h1 class="welcome-text">{{ '欢迎你，' + user.name }}</h1>
    </div>

    <div class="profile-section">
      <div class="profile-card">
        <h2 class="profile-title">
          <i class="el-icon-user-solid title-icon"></i>
          个人中心
        </h2>

        <!-- 修复后的描述列表 -->
        <el-descriptions
            :column="responsiveColumn"
            border
            class="info-grid"
        >
          <!-- 账号信息 -->
          <el-descriptions-item>
            <template slot="label" class="info-label">
              <i class="el-icon-s-custom"></i>
              <span class="label-text">账号</span>
            </template>
            <div class="content-box">{{ user.no }}</div>
          </el-descriptions-item>

          <!-- 电话信息 -->
          <el-descriptions-item>
            <template slot="label" class="info-label">
              <i class="el-icon-mobile-phone"></i>
              <span class="label-text">电话</span>
            </template>
            <div class="content-box">{{ user.phone }}</div>
          </el-descriptions-item>

          <!-- 性别信息 -->
          <el-descriptions-item>
            <template slot="label" class="info-label">
              <i class="el-icon-location-outline"></i>
              <span class="label-text">性别</span>
            </template>
            <div class="content-box">
              <el-tag
                  :type="user.sex === '1' ? 'primary' : 'danger'"
                  class="info-tag gender-tag"
              >
                <i :class="user.sex == 1 ? 'el-icon-male' : 'el-icon-female'"></i>
                {{ user.sex == 1 ? "男" : "女" }}
              </el-tag>
            </div>
          </el-descriptions-item>

          <!-- 角色信息 -->
          <el-descriptions-item>
            <template slot="label" class="info-label">
              <i class="el-icon-tickets"></i>
              <span class="label-text">角色</span>
            </template>
            <div class="content-box">
              <el-tag
                  type="success"
                  class="info-tag role-tag"
              >
                {{ roleMapping[user.roleId] }}
              </el-tag>
            </div>
          </el-descriptions-item>
        </el-descriptions>
      </div>
    </div>

    <div class="date-section">
      <DateUtils></DateUtils>
    </div>
  </div>
</template>

<script>
import DateUtils from "./DateUtils";

export default {
  name: "Home",
  components: { DateUtils },
  data() {
    return {
      user: {},
      roleMapping: {
        0: "超级管理员",
        1: "管理员",
        2: "用户"
      },
      screenWidth: document.documentElement.clientWidth
    }
  },
  computed: {
    responsiveColumn() {
      return this.screenWidth < 768 ? 1 : 2
    }
  },
  methods: {
    init() {
      this.user = JSON.parse(sessionStorage.getItem('CurUser')) || {
        name: '访客用户',
        no: 'N/A',
        phone: '未填写',
        sex: '1',
        roleId: 2
      }
    },
    handleResize() {
      this.screenWidth = document.documentElement.clientWidth
    }
  },
  created() {
    this.init()
    window.addEventListener('resize', this.handleResize)
  },
  beforeDestroy() {
    window.removeEventListener('resize', this.handleResize)
  }
}
</script>

<style scoped>

/* 基础容器 */
.home-container {
  min-height: 88vh;
  background: #f8fafc;
  padding: 40px 24px;
  box-sizing: border-box;
}

/* 欢迎语样式 */
.welcome-section {
  text-align: center;
  margin-bottom: 50px;
}

.welcome-text {
  font-size: 1.5rem;
  color: #2d3a4b;
  font-weight: 600;
  letter-spacing: 1px;
  margin: 0;
  line-height: 1.3;
}

/* 个人信息卡片 */
.profile-section {
  max-width: 1000px;
  margin: 0 auto 40px;
}

.profile-card {
  background: white;
  border-radius: 12px;
  padding: 40px;
  box-shadow: 0 6px 18px rgba(0, 0, 0, 0.04);
  overflow: hidden;
}

.profile-title {
  font-size: 1.8rem;
  color: #303133;
  text-align: center;
  margin: 0 0 35px 0;
  display: flex;
  align-items: center;
  justify-content: center;
}

.title-icon {
  font-size: 1.6rem;
  color: #409EFF;
  margin-right: 12px;
}

/* 信息表格修复 */
::v-deep .el-descriptions__body {
  background: transparent !important;
}

::v-deep .el-descriptions-item__label {
  background: #f8fafc !important;
  width: 160px !important;
  padding: 12px 20px !important;
  font-size: 15px;
  color: #606266 !important;
  border-right: 1px solid #ebeef5 !important;
}

::v-deep .el-descriptions-item__content {
  padding: 12px 20px !important;
  font-size: 15px;
  color: #303133;
  background: white !important;
  min-height: 44px;
}

.info-label {
  display: flex;
  align-items: center;
}

.info-label i {
  font-size: 18px;
  margin-right: 8px;
  color: #409EFF;
}

.label-text {
  flex-shrink: 0;
}

.content-box {
  display: flex;
  align-items: center;
  min-height: 24px;
}

/* 标签样式修复 */
.info-tag {
  padding: 8px 15px !important;
  border-radius: 6px !important;
  font-size: 14px !important;
  letter-spacing: 0.5px !important;
  border: none !important;
}

.gender-tag.el-tag--primary {
  background: #ecf5ff !important;
  color: #409EFF !important;
}

.gender-tag.el-tag--danger {
  background: #fef0f0 !important;
  color: #f56c6c !important;
  display: inline-flex !important;
  align-items: center !important;
  padding: 8px 15px !important;
}

.role-tag.el-tag--success {
  background: #f0f9eb !important;
  color: #67c23a !important;
  display: inline-flex !important;
  align-items: center !important;
  padding: 8px 15px !important;
}

/* 响应式设计 */
@media (max-width: 992px) {
  .profile-card {
    padding: 30px;
  }
}

@media (max-width: 768px) {
  .welcome-text {
    font-size: 1.8rem;
  }

  .profile-card {
    padding: 20px;
    border-radius: 8px;
  }

  ::v-deep .el-descriptions-item__label {
    width: 120px !important;
    padding: 12px !important;
  }

  .profile-title {
    font-size: 1.6rem;
    margin-bottom: 25px;
  }
}

@media (max-width: 480px) {
  ::v-deep .el-descriptions-item__label {
    width: 100px !important;
  }

  .info-label i {
    font-size: 16px;
  }
}
</style>