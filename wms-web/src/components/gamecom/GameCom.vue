<template>
  <div>
    <div style="margin-bottom: 5px;">
      <el-button type="primary"  @click="compute">计算功能</el-button>
      <el-button type="success" style="margin-left: 5px;" @click="resetParam">重置</el-button>
    </div>
    <el-table :data="tableData"
              :header-cell-style="{ background: '#f2f5fc', color: '#555555' }"
              border>
      <el-table-column prop="out" label="控制台输出">
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
      <el-form ref="form"  :model="form" label-width="100px">
        <el-form-item label="防御者选择数" prop="blueNum">
          <el-col :span="20">
            <el-input v-model="form.blueNum" ></el-input>
          </el-col>
        </el-form-item>
        <el-form-item label="攻击者选择数" prop="redNum">
          <el-col :span="20">
            <el-input v-model="form.redNum" ></el-input>
          </el-col>
        </el-form-item>
        <el-form-item label="概率分布" prop="chance">
          <el-col :span="20">
            <el-input v-model="form.chance" type="textarea"></el-input>
          </el-col>
        </el-form-item>
        <el-form-item label="回报函数值" prop="outcome">
          <el-col :span="20">
            <el-input v-model="form.outcome" type="textarea"></el-input>
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
  name: "GameCom",
  data() {
    return {
      tableData: [],
      centerDialogVisible:false,
      form:{
        blueNum:"",
        redNum:"",
        chance:"",
        outcome:"",
        inputData:"",
      },
    }
  },
  methods:{
    exain(){
      this.form = {
        blueNum:"2",
        redNum:"4",
        chance:"642,1000,358,1000",
        outcome:"-31.49,-7.95,-26.15,-17,-60.54,9.21,-59.84,-0.65,-31.49,-14.95,-26.15,-24,-60.54,2.21,-59.84,-7.65,-59.26,13.98,-51.52,3.01,-24.92,-19.26,-26.32,-22.59,-59.26,18.98,-51.52,8.01,-24.92,-14.26,-26.32,-17.59",
      };
    },
    resetForm() {
      this.$refs.form.resetFields();
    },
    compute(){
      this.centerDialogVisible = true
    },
    doCompute(){
      this.form.inputData="";
      this.form.inputData += this.form.blueNum + ",";
      this.form.inputData += this.form.redNum + ",";
      this.form.inputData += this.form.chance + ",";
      this.form.inputData += this.form.outcome;
        this.$axios.post(this.$httpUrl+'/pyCon/runGame2',{
            param:{inputData:this.form.inputData}
        }).then(res=>res.data).then(res=>{
          if (res) {
            this.tableData = [{ out: res }];
          }})
      this.$message({
        message: '操作成功！',
        type: 'success'
      });
      this.centerDialogVisible = false
    },
    sure(){
      this.doCompute();
    },
    resetParam(){
      this.tableData=[]
    },
  },
}
</script>
<style scoped>
.output-container {
  max-height: 500px; /* 设置最大高度，可根据需求调整 */
  overflow-y: auto; /* 当内容超出高度时显示垂直滚动条 */
  border: 1px solid #ccc; /* 可选：添加边框以便查看容器范围 */
  padding: 10px; /* 可选：添加内边距使内容不紧贴边框 */
  background-color: white
}
</style>