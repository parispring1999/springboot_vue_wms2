<template>
  <div>
    <div style="margin-bottom: 5px;">
      <el-button type="primary"  @click="compute">计算功能</el-button>
      <el-button type="success" style="margin-left: 5px;" @click="resetParam">重置表格</el-button>
    </div>
    <el-table :data="tableData"
              :header-cell-style="{ background: '#f2f5fc', color: '#555555' }"
              border>
      <el-table-column prop="eac" label="防御反制活动编号" width=183>
      </el-table-column>
      <el-table-column prop="ta" label="对手攻击技术编号" width="183">
      </el-table-column>
      <el-table-column prop="dh" label="防御反制活动修复作用收益" width="183">
      </el-table-column>
      <el-table-column prop="dc" label="防御反制活动操作成本" width="183">
      </el-table-column>
      <el-table-column prop="kd2" label="第二类防御者收益系数" width="183">
      </el-table-column>
      <el-table-column prop="af" label="攻击者被反制损失" width="183">
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
      <el-form ref="form"  :model="form" label-width="130px">
        <el-form-item label="防御反制活动编号" prop="eac">
          <el-col :span="20">
            <el-input v-model="form.eac"></el-input>
          </el-col>
        </el-form-item>
        <el-form-item label="对手攻击战术编号" prop="ta">
          <el-col :span="20">
            <el-input v-model="form.ta"></el-input>
          </el-col>
        </el-form-item>
        <el-form-item label="目标设备价值" prop="v">
          <el-col :span="20">
            <el-input v-model="form.v"></el-input>
          </el-col>
        </el-form-item>
        <el-form-item label="消耗算力" prop=cp>
          <el-col :span="20">
            <el-input v-model="form.cp"></el-input>
          </el-col>
        </el-form-item>
        <el-form-item label="消耗存储" prop="st">
          <el-col :span="20">
            <el-input v-model="form.st"></el-input>
          </el-col>
        </el-form-item>
        <el-form-item label="消耗网络" prop="nb">
          <el-col :span="20">
            <el-input v-model="form.nb"></el-input>
          </el-col>
        </el-form-item>
        <el-form-item label="操作时间" prop="ot">
          <el-col :span="20">
            <el-input v-model="form.ot"></el-input>
          </el-col>
        </el-form-item>
        <el-form-item label="负面业务影响" prop="bi">
          <el-col :span="20">
            <el-input v-model="form.bi"></el-input>
          </el-col>
        </el-form-item>
        <el-form-item label="机密性修复" prop="rc">
          <el-col :span="20">
            <el-input v-model="form.rc"></el-input>
          </el-col>
        </el-form-item>
        <el-form-item label="完整性修复" prop="ri">
          <el-col :span="20">
            <el-input v-model="form.ri"></el-input>
          </el-col>
        </el-form-item>
        <el-form-item label="可用性修复" prop="ra">
          <el-col :span="20">
            <el-input v-model="form.ra"></el-input>
          </el-col>
        </el-form-item>
        <el-form-item label="信息暴露" prop="ia">
          <el-col :span="20">
            <el-input v-model="form.ia"></el-input>
          </el-col>
        </el-form-item>
        <el-form-item label="弱点评分" prop="vu">
          <el-col :span="20">
            <el-input v-model="form.vu"></el-input>
          </el-col>
        </el-form-item>
      </el-form>
      <span slot="footer" class="dialog-footer">
    <el-button @click="centerDialogVisible = false">取 消</el-button>
    <el-button type="primary" @click="sure">确 定</el-button>
        <el-button @click="resetForm">重 置</el-button>
        <el-button type="primary" @click="loadPost">查 表</el-button>
  </span>
    </el-dialog>
  </div>
</template>

<script>
export default {
  name: "EacNodeQuaCom",
  data() {
    return {
      tableData: [],
      eac:'',
      centerDialogVisible:false,
      originalInputData: {},
      form:{
        eac:"",
        ta:"",
        v:"",
        cp:"",
        st:"",
        nb:"",
        ot:"",
        bi:"",
        rc:"",
        ri:"",
        ra:"",
        ia:"",
        vu:""
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
        const key = `${row.eac}-${row.ta}`;
        const inputData = this.originalInputData[key];
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
      const cp = parseFloat(this.form.cp);
      const st = parseFloat(this.form.st);
      const nb = parseFloat(this.form.nb);
      const ot = parseFloat(this.form.ot);
      const bi = parseFloat(this.form.bi);
      const rc = parseFloat(this.form.rc);
      const ri = parseFloat(this.form.ri);
      const ra = parseFloat(this.form.ra);
      const ia = parseFloat(this.form.ia);
      const vu = parseFloat(this.form.vu);

      // 进行计算
      const dh = ((1/3) * v * (rc + ri + ra)).toFixed(2);
      const dc = (cp+st+nb+ot+bi).toFixed(2);
      const kd2 = (0.8).toFixed(2);
      const af = (ia+3*vu).toFixed(2);

      // 创建新的表格行数据
      const newRow = {
        eac: this.form.eac,
        ta: this.form.ta,
        dh: dh,
        dc: dc,
        kd2: kd2,
        af: af
      };

      // 将新数据添加到表格数据中
      this.tableData.push(newRow);
      const key = `${this.form.eac}-${this.form.ta}`;
      this.originalInputData[key] = { ...this.form };
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
    loadPost(){
      this.$axios.post(this.$httpUrl+'/eacNodeQua/listPage',{
        pageSize:1,
        pageNum:1,
        param:{
          eac:this.form.eac,
          dynamicKey:this.form.ta
        }
      }).then(res=>res.data).then(res=>{
        console.log(res)
        const firstItem = res.data[0];
        // 将数据赋值给表单对象
        this.form = {
          eac: this.form.eac,
          ta: this.form.ta,
          v: this.form.v,
          cp: firstItem.cp || "",
          st: firstItem.st || "",
          nb: firstItem.nb || "",
          ot: firstItem.ot || "",
          bi: firstItem.bi || "",
          rc: firstItem.rc || "",
          ri: firstItem.ri || "",
          ra: firstItem.ra || "",
          ia: firstItem.ia || "",
          vu: firstItem.vu || "",
        };
      })
    },
    resetParam(){
      this.tableData=[]
    },
  },
}
</script>
<style scoped>
</style>