<template>
    <div>
        <div style="margin-bottom: 5px;">
            <el-input v-model="t" placeholder="请输入攻击技术编号" suffix-icon="el-icon-search" style="width: 200px;"
                      @keyup.enter.native="loadPost"></el-input>
            <el-button type="primary" style="margin-left: 5px;" @click="loadPost">查询</el-button>
            <el-button type="success" @click="resetParam">重置</el-button>

            <el-button type="primary" style="margin-left: 5px;" @click="add">新增</el-button>
        </div>
        <el-table :data="tableData"
                  :header-cell-style="{ background: '#f2f5fc', color: '#555555' }"
                  border
        >
            <el-table-column prop="t" label="编号" width="150">
            </el-table-column>
            <el-table-column prop="rs" label="技术要求" width="110">
            </el-table-column>
            <el-table-column prop="sa" label="严重性" width="110">
            </el-table-column>
            <el-table-column prop="lia" label="发生率" width="110">
            </el-table-column>
          <el-table-column prop="pc" label="机密性破坏" width="110">
          </el-table-column>
          <el-table-column prop="pi" label="完整性破坏" width="110">
          </el-table-column>
          <el-table-column prop="pa" label="可用性破坏" width="110">
          </el-table-column>
          <el-table-column prop="av" label="媒介需求" width="110">
          </el-table-column>
          <el-table-column prop="pr" label="特权需求" width="110">
          </el-table-column>
          <el-table-column prop="ui" label="交互需求" width="110">
          </el-table-column>
            <el-table-column prop="operate" label="操作">
                <template slot-scope="scope">
                    <el-button size="small" type="success" @click="mod(scope.row)">编辑</el-button>
                    <el-popconfirm
                            title="确定删除吗？"
                            @confirm="del(scope.row.t)"
                            style="margin-left: 5px;"
                    >
                        <el-button slot="reference" size="small" type="danger" >删除</el-button>
                    </el-popconfirm>
                </template>
            </el-table-column>
        </el-table>
        <el-pagination
                @size-change="handleSizeChange"
                @current-change="handleCurrentChange"
                :current-page="pageNum"
                :page-sizes="[5, 10]"
                :page-size="pageSize"
                layout="total, sizes, prev, pager, next, jumper"
                :total="total">
        </el-pagination>

        <el-dialog
                title="提示"
                :visible.sync="centerDialogVisible"
                width="30%"
                center>

            <el-form ref="form"  :model="form" label-width="100px">
                <el-form-item label="编号" prop="t">
                    <el-col :span="20">
                        <el-input v-model="form.t"></el-input>
                    </el-col>
                </el-form-item>
              <el-form-item label="技术要求" prop=rs>
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
<!--                <el-form-item label="备注" prop="remark">
                    <el-col :span="20">
                        <el-input type="textarea" v-model="form.remark"></el-input>
                    </el-col>
                </el-form-item>-->
            </el-form>
            <span slot="footer" class="dialog-footer">
    <el-button @click="centerDialogVisible = false">取 消</el-button>
    <el-button type="primary" @click="save">确 定</el-button>
  </span>
        </el-dialog>
    </div>
</template>

<script>
    export default {
        name: "TNodeQuaManage",
        data() {
            return {
                tableData: [],
                pageSize:10,
                pageNum:1,
                total:0,
                t:'',
                centerDialogVisible:false,
                form:{
                  t:"",
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
                rules: {
                    t: [
                        {required: true}
                    ]
                }
            }
        },
        methods:{
            resetForm() {
                this.$refs.form.resetFields();
            },
            del(t){
                console.log(t)

                this.$axios.get(this.$httpUrl+'/tNodeQua/del?t='+t).then(res=>res.data).then(res=>{
                    console.log(res)
                    if(res.code==200){

                        this.$message({
                            message: '操作成功！',
                            type: 'success'
                        });
                        this.loadPost()
                    }else{
                        this.$message({
                            message: '操作失败！',
                            type: 'error'
                        });
                    }

                })
            },

            mod(row){
                this.centerDialogVisible = true
                this.$nextTick(()=>{
                    //赋值到表单

                    this.form.t = row.t
                    this.form.rs = row.rs
                    this.form.sa = row.sa
                  this.form.lia = row.lia
                  this.form.pc = row.pc
                  this.form.pi = row.pi
                  this.form.pa = row.pa
                  this.form.av = row.av
                  this.form.pr = row.pr
                  this.form.ui = row.ui
                })
            },
            add(){

                this.centerDialogVisible = true
                this.$nextTick(()=>{
                    this.resetForm()
                })

            },
            doSave(){
                this.$axios.post(this.$httpUrl+'/tNodeQua/save',this.form).then(res=>res.data).then(res=>{
                    console.log(res)
                    if(res.code==200){

                        this.$message({
                            message: '操作成功！',
                            type: 'success'
                        });
                        this.centerDialogVisible = false
                        this.loadPost()
                        this. resetForm()
                    }else{
                        this.$message({
                            message: '操作失败！',
                            type: 'error'
                        });
                    }

                })
            },
            doMod(){
              this.$axios.post(this.$httpUrl+'/tNodeQua/update',this.form).then(res=>res.data).then(res=>{
                    console.log(res)
                    if(res.code==200){

                        this.$message({
                            message: '操作成功！',
                            type: 'success'
                        });
                        this.centerDialogVisible = false
                        this.loadPost()
                        this. resetForm()
                    }else{
                        this.$message({
                            message: '操作失败！',
                            type: 'error'
                        });
                    }

                })
            },
            save(){
                this.$refs.form.validate((valid) => {
                    if (valid) {
                      this.$axios.post(this.$httpUrl+'/tNodeQua/listPage',{
                        pageSize:this.pageSize,
                        pageNum:this.pageNum,
                        param:{
                          t:this.form.t
                        }
                      }).then(res=>res.data).then(res=> {
                        if (res.data[0].t===this.form.t) {
                          this.doMod();
                        } else {
                          this.doSave();
                        }
                      })
                    } else {
                        console.log('error submit!!');
                        return false;
                    }
                });

            },
            handleSizeChange(val) {
                console.log(`每页 ${val} 条`);
                this.pageNum=1
                this.pageSize=val
                this.loadPost()
            },
            handleCurrentChange(val) {
                console.log(`当前页: ${val}`);
                this.pageNum=val
                this.loadPost()
            },
            resetParam(){
                this.t=''

            },
            loadPost(){
                this.$axios.post(this.$httpUrl+'/tNodeQua/listPage',{
                    pageSize:this.pageSize,
                    pageNum:this.pageNum,
                    param:{
                        t:this.t
                    }
                }).then(res=>res.data).then(res=>{
                    console.log(res)
                    if(res.code==200){
                        this.tableData=res.data
                        this.total=res.total
                    }else{
                        alert('获取数据失败')
                    }

                })
            }
        },
        beforeMount() {
            this.loadPost()
        }
    }
</script>

<style scoped>

</style>