<#macro layout>
    <html>
    <head>
        <#include "style.ftl">
        <#include "js.ftl">
    </head>
    <body>
    <div id="app">
        <el-container>
            <#include "sidebar.ftl">
            <el-container>
                <el-header>Header</el-header>
                <el-main><#-- 在这里嵌入main content --><#nested></el-main>
                <el-footer><#include "footer.ftl"></el-footer>
            </el-container>
        </el-container>
    </div>
</#macro>
<#macro vue>
    </body>
    </html>
    <#nested>
</#macro>