<template>
  <div>
    <div style="margin-bottom: 5px;">
      <el-button type="primary"  @click="compute">计算功能</el-button>
      <el-button type="success" style="margin-left: 5px;" @click="resetParam">重置表格</el-button>
    </div>
    <el-table :data="tableData"
              :header-cell-style="{ background: '#f2f5fc', color: '#555555' }"
              border>
      <el-table-column prop="t" label="攻击技术编号" width="220">
      </el-table-column>
      <el-table-column prop="ag" label="攻击者目标达成得益" width="220">
      </el-table-column>
      <el-table-column prop="ka" label="攻击者综合收益系数" width="220">
      </el-table-column>
      <el-table-column prop="ac" label="攻击操作成本" width="220">
      </el-table-column>
      <el-table-column prop="kd1" label="第一类防御者综合收益系数" width="220">
      </el-table-column>
      <el-table-column prop="operate" label="操作">
        <template slot-scope="scope">
          <el-button size="small" type="success" @click="recompute(scope.row)">重新计算</el-button>
        </template>
      </el-table-column>
    </el-table>

    <el-dialog
        title="提示"
        :visible.sync="centerDialogVisible"
        width="30%"
        center>
      <el-form ref="form"  :model="form" label-width="120px">
        <el-form-item label="攻击技术编号" prop="t">
          <el-col :span="20">
            <el-input v-model="form.t"></el-input>
          </el-col>
        </el-form-item>
        <el-form-item label="目标设备价值" prop="v">
          <el-col :span="20">
            <el-input v-model="form.v"></el-input>
          </el-col>
        </el-form-item>
        <el-form-item label="技术要求" prop="rs">
          <el-col :span="20">
            <el-input v-model="form.rs"></el-input>
          </el-col>
        </el-form-item>
        <el-form-item label="严重性" prop="sa">
          <el-col :span="20">
            <el-input v-model="form.sa"></el-input>
          </el-col>
        </el-form-item>
        <el-form-item label="发生率" prop="lia">
          <el-col :span="20">
            <el-input v-model="form.lia"></el-input>
          </el-col>
        </el-form-item>
        <el-form-item label="机密性破坏" prop="pc">
          <el-col :span="20">
            <el-input v-model="form.pc"></el-input>
          </el-col>
        </el-form-item>
        <el-form-item label="完整性破坏" prop="pi">
          <el-col :span="20">
            <el-input v-model="form.pi"></el-input>
          </el-col>
        </el-form-item>
        <el-form-item label="可用性破坏" prop="pa">
          <el-col :span="20">
            <el-input v-model="form.pa"></el-input>
          </el-col>
        </el-form-item>
        <el-form-item label="媒介需求" prop="av">
          <el-col :span="20">
            <el-input v-model="form.av"></el-input>
          </el-col>
        </el-form-item>
        <el-form-item label="特权需求" prop="pr">
          <el-col :span="20">
            <el-input v-model="form.pr"></el-input>
          </el-col>
        </el-form-item>
        <el-form-item label="交互需求" prop="ui">
          <el-col :span="20">
            <el-input v-model="form.ui"></el-input>
          </el-col>
        </el-form-item>
      </el-form>
      <span slot="footer" class="dialog-footer">
    <el-button @click="centerDialogVisible = false">取 消</el-button>
    <el-button type="primary" @click="sure">确 定</el-button>
  </span>
    </el-dialog>
  </div>
</template>

<script>
export default {
  name: "TNodeQuaCom",
  data() {
    return {
      tableData: [],
      t:'',
      centerDialogVisible:false,
      originalInputData: {},
      form:{
        t:"",
        v:"",
        rs:"",
        sa:"",
        lia:"",
        pc:"",
        pi:"",
        pa:"",
        av:"",
        pr:"",
        ui:""
      },
    }
  },
  methods:{
    resetForm() {
      this.$refs.form.resetFields();
    },
    recompute(row){
      this.centerDialogVisible = true
      this.$nextTick(()=>{
        //赋值到表单
        const inputData = this.originalInputData[row.t];
        if (inputData) {this.form = { ...inputData };}
      })
    },
    compute(){
      this.centerDialogVisible = true
      this.$nextTick(()=>{
        this.resetForm()
      })
    },
    doCompute(){
      // 将表单中的字符串转换为数字
      const v = parseFloat(this.form.v);
      const pc = parseFloat(this.form.pc);
      const pi = parseFloat(this.form.pi);
      const pa = parseFloat(this.form.pa);
      const sa = parseFloat(this.form.sa);
      const rs = parseFloat(this.form.rs);
      const av = parseFloat(this.form.av);
      const pr = parseFloat(this.form.pr);
      const ui = parseFloat(this.form.ui);
      const lia = parseFloat(this.form.lia);

      // 进行计算
      const ag = ((1/3) * v * (pc + pi + pa)).toFixed(2);
      const ka = (0.8 * sa).toFixed(2);
      const ac = (rs + 10 * (av + pr + ui)).toFixed(2);
      const kd1 = (lia * sa).toFixed(2);

      // 创建新的表格行数据
      const newRow = {
        t: this.form.t,
        ag: ag,
        ka: ka,
        ac: ac,
        kd1: kd1
      };

      // 将新数据添加到表格数据中
      this.tableData.push(newRow);
      this.originalInputData[this.form.t] = { ...this.form };
          this.$message({
            message: '操作成功！',
            type: 'success'
          });
          this.centerDialogVisible = false
          this. resetForm()
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