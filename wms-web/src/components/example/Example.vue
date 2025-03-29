<template>
  <div>
    <div style="margin-bottom: 5px;">
      <el-button type="primary"  @click="compute">计算功能</el-button>
      <el-button type="success" style="margin-left: 5px;" @click="resetParam">重置表格</el-button>
    </div>
    <el-table :data="tableData"
              :header-cell-style="{ background: '#f2f5fc', color: '#555555' }"
              border>
      <el-table-column prop="t1m1A1r" label="t1,m1,A1,a" width="90">
      </el-table-column>
      <el-table-column prop="t1m1A1d" label="t1,m1,A1,d" width="90">
      </el-table-column>
      <el-table-column prop="t1m1A2r" label="t1,m1,A2,a" width="90">
      </el-table-column>
      <el-table-column prop="t1m1A2d" label="t1,m1,A2,d" width="90">
      </el-table-column>
      <el-table-column prop="t1m2A1r" label="t1,m2,A1,a" width="90">
      </el-table-column>
      <el-table-column prop="t1m2A1d" label="t1,m2,A1,d" width="90">
      </el-table-column>
      <el-table-column prop="t1m2A2r" label="t1,m2,A2,a" width="90">
      </el-table-column>
      <el-table-column prop="t1m2A2d" label="t1,m2,A2,d" width="90">
      </el-table-column>
      <el-table-column prop="t2m1A1r" label="t2,m1,A1,a" width="90">
      </el-table-column>
      <el-table-column prop="t2m1A1d" label="t2,m1,A1,d" width="90">
      </el-table-column>
      <el-table-column prop="t2m1A2r" label="t2,m1,A2,a" width="90">
      </el-table-column>
      <el-table-column prop="t2m1A2d" label="t2,m1,A2,d" width="90">
      </el-table-column>
      <el-table-column prop="t2m2A1r" label="t2,m2,A1,a" width="90">
      </el-table-column>
      <el-table-column prop="t2m2A1d" label="t2,m2,A1,d" width="90">
      </el-table-column>
      <el-table-column prop="t2m2A2r" label="t2,m2,A2,a" width="90">
      </el-table-column>
      <el-table-column prop="t2m2A2d" label="t2,m2,A2,d" width="90">
      </el-table-column>
    </el-table>

    <el-dialog
        title="提示"
        :visible.sync="centerDialogVisible"
        width="30%"
        center>
      <el-form ref="form"  :model="form" label-width="200px">
        <el-form-item label="攻击者目标达成得益1" prop="ag1">
          <el-col :span="20">
            <el-input v-model="form.ag1"></el-input>
          </el-col>
        </el-form-item>
        <el-form-item label="攻击者综合收益系数1" prop="ka1">
          <el-col :span="20">
            <el-input v-model="form.ka1"></el-input>
          </el-col>
        </el-form-item>
        <el-form-item label="攻击操作成本1" prop="ac1">
          <el-col :span="20">
            <el-input v-model="form.ac1"></el-input>
          </el-col>
        </el-form-item>
        <el-form-item label="第一类防御者综合收益系数1" prop="kd11">
          <el-col :span="20">
            <el-input v-model="form.kd11"></el-input>
          </el-col>
        </el-form-item>
        <el-form-item label="防御反制活动修复作用收益1" prop="dh1">
          <el-col :span="20">
            <el-input v-model="form.dh1"></el-input>
          </el-col>
        </el-form-item>
        <el-form-item label="防御反制活动操作成本1" prop="dc1">
          <el-col :span="20">
            <el-input v-model="form.dc1"></el-input>
          </el-col>
        </el-form-item>
        <el-form-item label="第二类防御者收益系数1" prop="kd21">
          <el-col :span="20">
            <el-input v-model="form.kd21"></el-input>
          </el-col>
        </el-form-item>
        <el-form-item label="攻击者被反制损失1" prop="af1">
          <el-col :span="20">
            <el-input v-model="form.af1"></el-input>
          </el-col>
        </el-form-item>
        <el-form-item label="信号伪装成本1" prop="dw1">
          <el-col :span="20">
            <el-input v-model="form.dw1"></el-input>
          </el-col>
        </el-form-item>
          <el-form-item label="攻击者目标达成得益2" prop="ag2">
            <el-col :span="20">
              <el-input v-model="form.ag2"></el-input>
            </el-col>
          </el-form-item>
          <el-form-item label="攻击者综合收益系数2" prop="ka2">
            <el-col :span="20">
              <el-input v-model="form.ka2"></el-input>
            </el-col>
          </el-form-item>
          <el-form-item label="攻击操作成本2" prop="ac2">
            <el-col :span="20">
              <el-input v-model="form.ac2"></el-input>
            </el-col>
          </el-form-item>
          <el-form-item label="第一类防御者综合收益系数2" prop="kd12">
            <el-col :span="20">
              <el-input v-model="form.kd12"></el-input>
            </el-col>
          </el-form-item>
          <el-form-item label="防御反制活动修复作用收益2" prop="dh2">
            <el-col :span="20">
              <el-input v-model="form.dh2"></el-input>
            </el-col>
          </el-form-item>
          <el-form-item label="防御反制活动操作成本2" prop="dc2">
            <el-col :span="20">
              <el-input v-model="form.dc2"></el-input>
            </el-col>
          </el-form-item>
          <el-form-item label="第二类防御者收益系数2" prop="kd22">
            <el-col :span="20">
              <el-input v-model="form.kd22"></el-input>
            </el-col>
          </el-form-item>
          <el-form-item label="攻击者被反制损失2" prop="af2">
            <el-col :span="20">
              <el-input v-model="form.af2"></el-input>
            </el-col>
          </el-form-item>
          <el-form-item label="信号伪装成本2" prop="dw2">
            <el-col :span="20">
              <el-input v-model="form.dw2"></el-input>
            </el-col>
          </el-form-item>
      </el-form>
      <span slot="footer" class="dialog-footer">
    <el-button @click="centerDialogVisible = false">取 消</el-button>
    <el-button type="primary" @click="sure">确 定</el-button>
        <el-button @click="resetForm">重 置</el-button>
        <el-button @click="exain">案例数据</el-button>
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
        ag1:"",
        ka1:"",
        ac1:"",
        kd11:"",
        dh1:"",
        dc1:"",
        kd21:"",
        af1:"",
        dw1:"",
        ag2:"",
        ka2:"",
        ac2:"",
        kd12:"",
        dh2:"",
        dc2:"",
        kd22:"",
        af2:"",
        dw2:"",
      },
    }
  },
  methods:{
    exain(){
      this.form = {
        ag1:"8.97",
        ka1:"0.64",
        ac1:"20",
        kd11:"0.56",
        dh1:"26.92",
        dc1:"18",
        kd21:"0.8",
        af1:"22.7",
        dw1:"7",
        ag2:"5.38",
        ka2:"0.48",
        ac2:"27.5",
        kd12:"0.42",
        dh2:"0",
        dc2:"12",
        kd22:"0.8",
        af2:"45",
        dw2:"5",
      };
    },
    resetForm() {
      this.$refs.form.resetFields();
    },
    compute(){
      this.centerDialogVisible = true
    },
    doCompute(){
      // 将表单中的字符串转换为数字
      const ag1 = parseFloat(this.form.ag1);
      const ka1 = parseFloat(this.form.ka1);
      const ac1 = parseFloat(this.form.ac1);
      const kd11 = parseFloat(this.form.kd11);
      const dh1 = parseFloat(this.form.dh1);
      const dc1 = parseFloat(this.form.dc1);
      const kd21 = parseFloat(this.form.kd21);
      const af1 = parseFloat(this.form.af1);
      const dw1 = parseFloat(this.form.dw1);
      const ag2 = parseFloat(this.form.ag2);
      const ka2 = parseFloat(this.form.ka2);
      const ac2 = parseFloat(this.form.ac2);
      const kd12 = parseFloat(this.form.kd12);
      const dh2 = parseFloat(this.form.dh2);
      const dc2 = parseFloat(this.form.dc2);
      const kd22 = parseFloat(this.form.kd22);
      const af2 = parseFloat(this.form.af2);
      const dw2 = parseFloat(this.form.dw2);

      // 进行计算
      const t1m1A1r = ka1*(ag1-dh1)-ac1;
      const t1m1A1d = kd11*(dh1-ag1)-dc1;
      const t1m1A2r = ka2*(ag2-dh1)-af1-ac2;
      const t1m1A2d = kd12*(dh1-ag2)+kd21*af1-dc1;
      const t1m2A1r = ka1*(ag1-dh1)-ac1;
      const t1m2A1d = kd11*(dh1-ag1)-dc1-dw2;
      const t1m2A2r = ka2*(ag2-dh1)-af1-ac2;
      const t1m2A2d = kd12*(dh1-ag2)+kd21*af1-dc1-dw2;
      const t2m1A1r = ka1*(ag1-dh2)-af2-ac1;
      const t2m1A1d = kd11*(dh2-ag1)+kd22*af2-dc2-dw1;
      const t2m1A2r = ka2*(ag2-dh2)-ac2;
      const t2m1A2d = kd12*(dh2-ag2)-dc2-dw1;
      const t2m2A1r = ka1*(ag1-dh2)-af2-ac1;
      const t2m2A1d = kd11*(dh2-ag1)+kd22*af2-dc2;
      const t2m2A2r = ka2*(ag2-dh2)-ac2;
      const t2m2A2d = kd12*(dh2-ag2)-dc2;

      // 创建新的表格行数据
      const newRow = {
        t1m1A1r: t1m1A1r,
        t1m1A1d: t1m1A1d,
        t1m1A2r: t1m1A2r,
        t1m1A2d: t1m1A2d,
        t1m2A1r: t1m2A1r,
        t1m2A1d: t1m2A1d,
        t1m2A2r: t1m2A2r,
        t1m2A2d: t1m2A2d,
        t2m1A1r: t2m1A1r,
        t2m1A1d: t2m1A1d,
        t2m1A2r: t2m1A2r,
        t2m1A2d: t2m1A2d,
        t2m2A1r: t2m2A1r,
        t2m2A1d: t2m2A1d,
        t2m2A2r: t2m2A2r,
        t2m2A2d: t2m2A2d,
      };

      for (let key in newRow) {
        if (newRow.hasOwnProperty(key)) {
          newRow[key] = parseFloat(newRow[key].toFixed(2));
        }
      }

      // 将新数据添加到表格数据中
      this.tableData.push(newRow);
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