<template>
  <div class="login-container">
    <div class="login-card">
      <div class="login-header">
        <h1 class="login-title">用户登录</h1>
      </div>

      <el-form
          :model="loginForm"
          :rules="rules"
          ref="loginForm"
          class="login-form"
          label-position="left"
      >
        <el-form-item label="账号" prop="no" class="form-item">
          <el-input
              v-model="loginForm.no"
              placeholder="请输入账号"
              size="medium"
              autocomplete="off"
              tabindex="1"
          >
            <i slot="prefix" class="el-icon-user"></i>
          </el-input>
        </el-form-item>

        <el-form-item label="密码" prop="password" class="form-item">
          <el-input
              v-model="loginForm.password"
              type="password"
              placeholder="请输入密码"
              size="medium"
              show-password
              autocomplete="off"
              tabindex="2"
              @keyup.enter.native="confirm"
          >
            <i slot="prefix" class="el-icon-lock"></i>
          </el-input>
        </el-form-item>

        <el-button
            type="primary"
            class="login-btn"
            :loading="confirm_disabled"
            @click="confirm"
        >
          {{ confirm_disabled ? '登录中...' : '立即登录' }}
        </el-button>
      </el-form>
    </div>
  </div>
</template>

<script>
export default {
  name: "Login",
  data() {
    return {
      confirm_disabled: false,
      loginForm: {
        no: '',
        password: ''
      },
      rules: {
        no: [{ required: true, message: '请输入账号', trigger: 'blur' }],
        password: [{ required: true, message: '请输入密码', trigger: 'blur' }]
      }
    };
  },
  methods: {
    confirm() {
      // 保持原有验证逻辑不变
      this.confirm_disabled=true;
      this.$refs.loginForm.validate((valid) => {
        if (valid) { //valid成功为true，失败为false
          //去后台验证用户名密码
          this.$axios.post(this.$httpUrl+'/user/login',this.loginForm).then(res=>res.data).then(res=>{
            console.log(res)
            if(res.code==200){
              //存储
              sessionStorage.setItem("CurUser",JSON.stringify(res.data.user))

              console.log(res.data.menu)
              this.$store.commit("setMenu",res.data.menu)
              //跳转到主页
              this.$router.replace('/Index');
            }else{
              this.confirm_disabled=false;
              alert('校验失败，用户名或密码错误！');
              return false;
            }
          });
        } else {
          this.confirm_disabled=false;
          console.log('校验失败');
          return false;
        }
      });

    }
  }
}
</script>

<style scoped>
.login-container {
  min-height: 100vh;
  display: flex;
  align-items: center;
  justify-content: center;
  background: linear-gradient(135deg, #6685ea 0%, #6678ea 100%);
}

.login-card {
  width: 420px;
  padding: 40px;
  background: rgba(255, 255, 255, 0.96);
  border-radius: 12px;
  box-shadow: 0 8px 32px rgba(0, 0, 0, 0.1);
  transition: all 0.3s ease;
}

.login-header {
  margin-bottom: 32px;
  text-align: center;
}

.login-title {
  font-size: 24px;
  color: #303133;
  font-weight: 600;
  letter-spacing: 1px;
  position: relative;
  padding-bottom: 8px;
}

.login-title::after {
  content: '';
  position: absolute;
  bottom: 0;
  left: 50%;
  transform: translateX(-50%);
  width: 40px;
  height: 2px;
  background: #409eff;
}

.form-item {
  margin-bottom: 24px;
}

.form-item /deep/ .el-form-item__label {
  font-size: 14px;
  color: #606266;
  padding-right: 16px;
}

.login-btn {
  width: 100%;
  height: 40px;
  font-size: 14px;
  letter-spacing: 2px;
  margin-top: 12px;
  transition: all 0.3s;
}

/* 输入框样式优化 */
/deep/ .el-input__inner {
  height: 40px;
  line-height: 40px;
  padding-left: 40px !important;
  transition: border-color 0.3s;
}

/deep/ .el-input__prefix {
  left: 10px;
  color: #c0c4cc;
  transition: color 0.3s;
}

/deep/ .el-input:hover .el-input__inner {
  border-color: #409eff;
}

/deep/ .el-input__inner:focus {
  border-color: #409eff;
  box-shadow: 0 0 8px rgba(64, 158, 255, 0.2);
}

/* 响应式处理 */
@media (max-width: 480px) {
  .login-card {
    width: 90%;
    padding: 24px;
  }

  .login-title {
    font-size: 20px;
  }
}
</style>