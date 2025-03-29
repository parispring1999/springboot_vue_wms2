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
      <el-form ref="form"  :model="form" label-width="90px">
        <el-form-item label="主机类型" prop="hostType">
          <el-col :span="20">
            <el-input v-model="form.hostType" type="textarea"></el-input>
          </el-col>
        </el-form-item>
        <el-form-item label="系统类型" prop="systemType">
          <el-col :span="20">
            <el-input v-model="form.systemType" type="textarea"></el-input>
          </el-col>
        </el-form-item>
        <el-form-item label="直接连接数" prop="connectionNum">
          <el-col :span="20">
            <el-input v-model="form.connectionNum" type="textarea"></el-input>
          </el-col>
        </el-form-item>
        <el-form-item label="业务类别" prop="businessType">
        <el-col :span="20">
          <el-input v-model="form.businessType" type="textarea"></el-input>
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
  name: "HostValue",
  data() {
    return {
      tableData: [],
      centerDialogVisible:false,
      form:{
        hostType:"",
        systemType:"",
        connectionNum:"",
        businessType:"",
        inputData:"",
      },
    }
  },
  methods:{
    exain() {
      this.form = {
        hostType: "0.8 0.8 0.6 1 0.8 0.8",
        systemType:"0.8 0.8 1 0.8 0.8 0.8",
        connectionNum:"0.9 1 0.8 0.8 0.8 0.8 0.9",
        businessType:"1 0.6 0.8 0.9 0.9 0.6",
      };
    },
    resetForm() {
      this.$refs.form.resetFields();
    },
    compute(){
      this.centerDialogVisible = true
    },
    doCompute(){
      this.form.inputData += this.form.hostType + ";";
      this.form.inputData += this.form.systemType + ";";
      this.form.inputData += this.form.connectionNum + ";";
      this.form.inputData += this.form.businessType;
        this.$axios.post(this.$httpUrl+'/pyCon/hostValue',{
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