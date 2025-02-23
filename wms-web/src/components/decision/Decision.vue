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
      <el-form ref="form"  :model="form" label-width="150px">
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
  name: "Decision",
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

      // 将输入的字符串转换为数组
      const m1aArr = this.form.m1a.split(/[, \n]+/).map(Number);
      const m2aArr = this.form.m2a.split(/[, \n]+/).map(Number);
      const t1dArr = this.form.t1d.split(/[, \n]+/).map(Number);
      const t2dArr = this.form.t2d.split(/[, \n]+/).map(Number);
      const t1m1Arr = this.form.t1m1.split(/[, \n]+/).map(Number);
      const t1m2Arr = this.form.t1m2.split(/[, \n]+/).map(Number);
      const t2m1Arr = this.form.t2m1.split(/[, \n]+/).map(Number);
      const t2m2Arr = this.form.t2m2.split(/[, \n]+/).map(Number);

      // 计算值1
      const t1m1Sum = t1m1Arr.reduce((acc, val, index) => acc + val * m1aArr[index], 0);
      const t1m2Sum = t1m2Arr.reduce((acc, val, index) => acc + val * m2aArr[index], 0);
      const value1 = t1dArr.reduce((acc, val, index) => acc + val * (index === 0 ? t1m1Sum : t1m2Sum), 0);

      // 计算值2
      const t2m1Sum = t2m1Arr.reduce((acc, val, index) => acc + val * m1aArr[index], 0);
      const t2m2Sum = t2m2Arr.reduce((acc, val, index) => acc + val * m2aArr[index], 0);
      const value2 = t2dArr.reduce((acc, val, index) => acc + val * (index === 0 ? t2m1Sum : t2m2Sum), 0);

      let selectedT;
      let selectedM;
      let selectedA;

      if (value1 > value2) {
        selectedT = "t1";
        selectedM = t1dArr[0] > t1dArr[1] ? "m1" : "m2";
        const selectedMAArr = selectedM === "m1" ? m1aArr : m2aArr;
        selectedA = selectedMAArr.indexOf(Math.max(...selectedMAArr)) + 1;
      } else {
        selectedT = "t2";
        selectedM = t2dArr[0] > t2dArr[1] ? "m1" : "m2";
        const selectedMAArr = selectedM === "m1" ? m1aArr : m2aArr;
        selectedA = selectedMAArr.indexOf(Math.max(...selectedMAArr)) + 1;
      }

      const out = `${selectedT},${selectedM},A${selectedA}`;

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