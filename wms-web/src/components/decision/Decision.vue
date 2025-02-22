<template>
  <div>
    <div style="margin-bottom: 5px;">
      <el-button type="primary"  @click="compute">计算功能</el-button>
      <el-button type="success" style="margin-left: 5px;" @click="resetParam">重置表格</el-button>
    </div>
    <el-table :data="tableData"
              :header-cell-style="{ background: '#f2f5fc', color: '#555555' }"
              border>
      <el-table-column prop="out" label="输出决策">
        <template slot-scope="scope">
          <div class="output-container" style="white-space: pre-wrap;">{{ scope.row.out }}</div>
        </template>
      </el-table-column>
    </el-table>

    <el-dialog
        title="提示"
        :visible.sync="centerDialogVisible"
        width="30%"
        center>
      <el-form ref="form"  :model="form" label-width="200px">
        <el-form-item label="(m1,a)策略分布" prop="m1a">
          <el-col :span="20">
            <el-input v-model="form.m1a"></el-input>
          </el-col>
        </el-form-item>
        <el-form-item label="(m2,a)策略分布" prop="m2a">
          <el-col :span="20">
            <el-input v-model="form.m2a"></el-input>
          </el-col>
        </el-form-item>
        <el-form-item label="(t1,d)策略分布" prop="t1d">
          <el-col :span="20">
            <el-input v-model="form.t1d"></el-input>
          </el-col>
        </el-form-item>
        <el-form-item label="(t2,d)策略分布" prop="t2d">
          <el-col :span="20">
            <el-input v-model="form.t2d"></el-input>
          </el-col>
        </el-form-item>
        <el-form-item label="(t1,m1)防御方回报" prop="t1m1">
          <el-col :span="20">
            <el-input v-model="form.t1m1"></el-input>
          </el-col>
        </el-form-item>
        <el-form-item label="(t1,m2)防御方回报" prop="t1m2">
          <el-col :span="20">
            <el-input v-model="form.t1m2"></el-input>
          </el-col>
        </el-form-item>
        <el-form-item label="(t2,m1)防御方回报" prop="t2m1">
          <el-col :span="20">
            <el-input v-model="form.t2m1"></el-input>
          </el-col>
        </el-form-item>
        <el-form-item label="(t2,m2)防御方回报" prop="t2m2">
          <el-col :span="20">
            <el-input v-model="form.t2m2"></el-input>
          </el-col>
        </el-form-item>
      </el-form>
      <span slot="footer" class="dialog-footer">
    <el-button @click="centerDialogVisible = false">取 消</el-button>
    <el-button type="primary" @click="sure">确 定</el-button>
        <el-button @click="resetForm">重 置</el-button>
  </span>
    </el-dialog>
  </div>
</template>

<script>
export default {
  name: "Example",
  data() {
    return {
      tableData: [],
      centerDialogVisible:false,
      form:{
        m1a:"",
        m2a:"",
        t1d:"",
        t2d:"",
        t1m1:"",
        t1m2:"",
        t2m1:"",
        t2m2:"",
      },
    }
  },
  methods:{
    resetForm() {
      this.$refs.form.resetFields();
    },
    compute(){
      this.centerDialogVisible = true
    },
    doCompute(){
      // 将表单中的字符串转换为数字
      const m1a = parseFloat(this.form.m1a);
      const m2a = parseFloat(this.form.m2a);
      const t1d = parseFloat(this.form.t1d);
      const t2d = parseFloat(this.form.t2d);
      const t1m1 = parseFloat(this.form.t1m1);
      const t1m2 = parseFloat(this.form.t1m2);
      const t2m1 = parseFloat(this.form.t2m1);
      const t2m2 = parseFloat(this.form.t2m2);

      // 进行计算和决策



      // 将新数据添加到表格数据中
      this.tableData = [{ out: out }];
      this.$message({
        message: '操作成功！',
        type: 'success'
      });
      this.centerDialogVisible = false
    },
    sure(){
      this.$refs.form.validate((valid) => {
        if (valid) {
          this.doCompute();
        } else {
          console.log('error submit!!');
          return false;
        }
      });
    },
    resetParam(){
      this.tableData=[]
    },
  },
}
</script>
<style scoped>
</style>