<template>
    <div>
        <div style="margin-bottom: 5px;">
            <el-input v-model="eac" placeholder="请输入防御反制活动编号" suffix-icon="el-icon-search" style="width: 200px;"
                      @keyup.enter.native="loadPost"></el-input>
          <el-input v-model="ta" placeholder="请输入对手战术编号" suffix-icon="el-icon-search" style="margin-left: 5px;width: 200px;"
                    @keyup.enter.native="loadPost"></el-input>
            <el-button type="primary" style="margin-left: 5px;" @click="loadPost">查询</el-button>
            <el-button type="success" @click="resetParam">重置</el-button>

            <el-button type="primary" style="margin-left: 5px;" @click="add">新增</el-button>
        </div>
        <el-table :data="tableData"
                  :header-cell-style="{ background: '#f2f5fc', color: '#555555' }"
                  border
        >
            <el-table-column prop="eac" label="编号" width="100">
            </el-table-column>
            <el-table-column prop="cp" label="消耗算力" width="90">
            </el-table-column>
            <el-table-column prop="st" label="消耗存储" width="90">
            </el-table-column>
            <el-table-column prop="nb" label="消耗网络" width="90">
            </el-table-column>
          <el-table-column prop="ot" label="操作时间" width="90">
          </el-table-column>
          <el-table-column prop="bi" label="负面业务影响" width="100">
          </el-table-column>
          <el-table-column prop="rc" label="机密性修复" width="90">
          </el-table-column>
          <el-table-column prop="ri" label="完整性修复" width="90">
          </el-table-column>
          <el-table-column prop="ra" label="可用性修复" width="90">
          </el-table-column>
          <el-table-column prop="ia" label="信息暴露" width="90">
          </el-table-column>
          <el-table-column prop="vu" label="弱点评分" width="240">
          </el-table-column>
            <el-table-column prop="operate" label="操作">
                <template slot-scope="scope">
                    <el-button size="small" type="success" @click="mod(scope.row)">编辑</el-button>
                    <el-popconfirm
                            title="确定删除吗？"
                            @confirm="del(scope.row.eac)"
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
                :page-sizes="[3,5]"
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
                <el-form-item label="编号" prop="eac">
                    <el-col :span="20">
                        <el-input v-model="form.eac"></el-input>
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
                  <el-input type="textarea" v-model="form.vu"></el-input>
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
        name: "EacNodeQuaManage",
        data() {
            return {
                tableData: [],
                pageSize:5,
                pageNum:1,
                total:0,
                eac:'',
                ta:'',
                centerDialogVisible:false,
                form:{
                  eac:"",
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
                /*rules: {
                    name: [
                        {required: true, message: '请输入仓库名', trigger: 'blur'}
                    ]
                }*/
            }
        },
        methods:{
            resetForm() {
                this.$refs.form.resetFields();
            },
            del(eac){
                console.log(eac)

                this.$axios.get(this.$httpUrl+'/eacNodeQua/del?t='+eac).then(res=>res.data).then(res=>{
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

                    this.form.eac = row.eac
                    this.form.cp = row.cp
                    this.form.st = row.st
                  this.form.nb = row.nb
                  this.form.ot = row.ot
                  this.form.bi = row.bi
                  this.form.rc = row.rc
                  this.form.ri = row.ri
                  this.form.ra = row.ra
                  this.form.ia = row.ia
                  this.form.vu = row.vu
                })
            },
            add(){

                this.centerDialogVisible = true
                this.$nextTick(()=>{
                    this.resetForm()
                })

            },
            doSave(){
                this.$axios.post(this.$httpUrl+'/eacNodeQua/save',this.form).then(res=>res.data).then(res=>{
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
                this.$axios.post(this.$httpUrl+'/eacNodeQua/update',this.form).then(res=>res.data).then(res=>{
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
                        if(this.form.eac){
                            this.doMod();
                        }else{
                            this.doSave();
                        }
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
                this.eac=''
                this.ta=''

            },
            loadPost(){
                this.$axios.post(this.$httpUrl+'/eacNodeQua/listPage',{
                    pageSize:this.pageSize,
                    pageNum:this.pageNum,
                    param:{
                        eac:this.eac,
                      dynamicKey:this.ta
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