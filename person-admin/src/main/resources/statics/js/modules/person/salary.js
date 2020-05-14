$(function () {

    $("#jqGrid").jqGrid({
        url: baseURL + 'person/salary/list',
        datatype: "json",
        colModel: [			
			{ label: '主键', name: 'id', index: "id", width: 45, key: true,hidden:true},
            { label: '用户ID', name: 'userId', width: 45,hidden:true},
            { label: '工资月份', name: 'salaryMonth', width: 75 },
            { label: '应发工资', name: 'mustSalary', width: 75 },
            { label: '实发工资', name: 'realitySalary', width: 75 },
            { label: '公积金扣款', name: 'fundAmount', width: 75 },
            { label: '个税扣款', name: 'taxAmount', width: 75 },
            { label: '医保扣款', name: 'medicalAmount', width: 75 },
            { label: '养老扣款', name: 'pensionAmount', width: 75 },
            { label: '工伤扣款', name: 'injuredAmount', width: 75 },
            { label: '生育扣款', name: 'birthAmount', width: 75 },
            { label: '失业扣款', name: 'unemploymentAmount', width: 75 },
            { label: '请假扣款', name: 'leaveAmount', width: 75 },
            { label: '迟到扣款', name: 'lateAmount', width: 75 },
            { label: '基本工资', name: 'baseAmount', width: 75 },
            { label: '工龄工资', name: 'workAmount', width: 75 },
            { label: '加班费', name: 'overtimeAmount', width: 75 },
            { label: '绩效奖金', name: 'meritsAmount', width: 75 },
			{ label: '创建时间', name: 'createTime', index: "create_time", width: 85}
        ],
		viewrecords: true,
        height: 385,
        rowNum: 10,
		rowList : [10,30,50],
        rownumbers: true, 
        rownumWidth: 25, 
        autowidth:true,
        multiselect: true,
        pager: "#jqGridPager",
        jsonReader : {
            root: "page.list",
            page: "page.currPage",
            total: "page.totalPage",
            records: "page.totalCount"
        },
        prmNames : {
            page:"page", 
            rows:"limit", 
            order: "order"
        },
        gridComplete:function(){
        	//隐藏grid底部滚动条
        	$("#jqGrid").closest(".ui-jqgrid-bdiv").css({ "overflow-x" : "hidden" }); 
        }
    });
});
var setting = {
    data: {
        simpleData: {
            enable: true,
            idKey: "deptId",
            pIdKey: "parentId",
            rootPId: -1
        },
        key: {
            url:"nourl"
        }
    }
};
var ztree;

var vm = new Vue({
    el:'#rrapp',
    data:{
        q:{
            name: null
        },
        showList: true,
        title:null,
        salary:{
            status:1
        }
    },
    methods: {
        query: function () {
            vm.reload();
        },
        add: function(){
            vm.showList = false;
            vm.title = "新增";
            vm.salary = { status:0};


        },
        update: function () {
            var id = getSelectedRow();
            if(id == null){
                return ;
            }

            vm.showList = false;
            vm.title = "修改";

            vm.getRecord(id);
        },
        permissions: function () {
            var id = getSelectedRow();
            if(id == null){
                return ;
            }

            window.location.href=baseURL+"person/permissions/index/"+id;
        },
        del: function () {
            var ids = getSelectedRows();
            if(ids == null){
                return ;
            }

            confirm('确定要删除选中的记录？', function(){
                $.ajax({
                    type: "POST",
                    url: baseURL + "person/salary/delete",
                    contentType: "application/json",
                    data: JSON.stringify(ids),
                    success: function(r){
                        if(r.code == 0){
                            alert('操作成功', function(){
                                vm.reload();
                            });
                        }else{
                            alert(r.msg);
                        }
                    }
                });
            });
        },
        saveOrUpdate: function () {
            var url = vm.salary.id == null ? "person/salary/save" : "person/salary/update";
            $.ajax({
                type: "POST",
                url: baseURL + url,
                contentType: "application/json",
                data: JSON.stringify(vm.salary),
                success: function(r){
                    if(r.code === 0){
                        alert('操作成功', function(){
                            vm.reload();
                        });
                    }else{
                        alert(r.msg);
                    }
                }
            });
        },
        getRecord: function(id){
            $.get(baseURL + "person/salary/info/"+id, function(r){
                vm.salary = r.salary;

            });
        },
        reload: function () {
            vm.showList = true;
            var page = $("#jqGrid").jqGrid('getGridParam','page');
            $("#jqGrid").jqGrid('setGridParam',{
                postData:{'name': vm.q.name},
                page:page
            }).trigger("reloadGrid");
        }
    }
});
layui.use('laydate', function(){
    var laydate = layui.laydate;

    //执行一个laydat
    laydate.render({
        elem: '#startDate' //指定元素
        ,value: new Date()
    });
    laydate.render({
        elem: '#endDate' //指定元素
        ,value: new Date()
    });
});