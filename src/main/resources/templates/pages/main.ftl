<#-- 引入布局指令的命名空间 -->
<#import "../layout/layout.ftl" as layout>
<#import "../layout/vue.script.ftl" as vue>

<#-- 调用布局指令 -->
<@layout.layout>
<#-- 将下面这个main content嵌入到layout指令的nested块中 -->
    <el-table :data="tableData">
        <el-table-column prop="date" label="日期" width="140">
        </el-table-column>
        <el-table-column prop="name" label="姓名" width="120">
        </el-table-column>
        <el-table-column prop="address" label="地址">
        </el-table-column>
    </el-table>
</@layout.layout>
<@vue.vue>
    <script>
        let app = new Vue({
            el: '#app',
            data:function () {
                const item = {
                    date: '2016-05-02',
                    name: '王小虎',
                    address: '上海市普陀区金沙江路 1518 弄'
                };
                return {
                    tableData: Array(20).fill(item)
                }
            }
        });
    </script>
</@vue.vue>