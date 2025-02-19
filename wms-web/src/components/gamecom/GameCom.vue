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
      <el-form ref="form"  :model="form" label-width="120px">
        <el-form-item label="输入值" prop="in">
          <el-col :span="20">
            <el-input v-model="form.in"></el-input>
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
  name: "GameCom",
  data() {
    return {
      tableData: [],
      centerDialogVisible:false,
      form:{
        in:"",
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
        this.$axios.post(this.$httpUrl+'/pyCon/runGame1').then(res=>res.data).then(res=>{
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