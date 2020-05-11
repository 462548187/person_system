$(function () {
    $("#jqGrid").jqGrid({
        url: baseURL + 'person/plan/list',
        datatype: "json",
        colModel: [			
			{ label: '主键', name: 'id', index: "id", width: 45, key: true,hidden:true},
            { label: '用户ID', name: 'userId', width: 45},
            { label: '计划名称', name: 'name', width: 75 },
            { label: '开始日期', name: 'startDate', width: 75 },
            { label: '结束日期', name: 'endDate', width: 75 },
			{ label: '状态', name: 'status', width: 60, formatter: function(value, options, row){
				return value === 0 ? 
					'<span class="label label-danger">进行中</span>' :
					'<span class="label label-success">完成</span>';
			}},
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
            planname: null
        },
        showList: true,
        title:null,
        roleList:{},
        plan:{
            status:1,
            deptId:null,
            deptName:null,
            roleIdList:[]
        }
    },
    methods: {
        query: function () {
            vm.reload();
        },
        add: function(){
            vm.showList = false;
            vm.title = "新增";
            vm.roleList = {};
            vm.plan = {deptName:null, deptId:null, status:1, roleIdList:[]};

            //获取角色信息
            this.getRoleList();

            vm.getDept();
        },
        getDept: function(){
            //加载部门树
            $.get(baseURL + "person/dept/list", function(r){
                ztree = $.fn.zTree.init($("#deptTree"), setting, r);
                var node = ztree.getNodeByParam("deptId", vm.plan.deptId);
                if(node != null){
                    ztree.selectNode(node);

                    vm.plan.deptName = node.name;
                }
            })
        },
        update: function () {
            var planId = getSelectedRow();
            if(planId == null){
                return ;
            }

            vm.showList = false;
            vm.title = "修改";

            vm.getUser(planId);
            //获取角色信息
            this.getRoleList();
        },
        permissions: function () {
            var planId = getSelectedRow();
            if(planId == null){
                return ;
            }

            window.location.href=baseURL+"person/permissions/index/"+planId;
        },
        del: function () {
            var planIds = getSelectedRows();
            if(planIds == null){
                return ;
            }

            confirm('确定要删除选中的记录？', function(){
                $.ajax({
                    type: "POST",
                    url: baseURL + "person/plan/delete",
                    contentType: "application/json",
                    data: JSON.stringify(planIds),
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
            var url = vm.plan.planId == null ? "person/plan/save" : "person/plan/update";
            $.ajax({
                type: "POST",
                url: baseURL + url,
                contentType: "application/json",
                data: JSON.stringify(vm.plan),
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
        getUser: function(planId){
            $.get(baseURL + "person/plan/info/"+planId, function(r){
                vm.plan = r.plan;
                vm.plan.password = null;

                vm.getDept();
            });
        },
        getRoleList: function(){
            $.get(baseURL + "person/role/select", function(r){
                vm.roleList = r.list;
            });
        },
        deptTree: function(){
            layer.open({
                type: 1,
                offset: '50px',
                skin: 'layui-layer-molv',
                title: "选择部门",
                area: ['300px', '450px'],
                shade: 0,
                shadeClose: false,
                content: jQuery("#deptLayer"),
                btn: ['确定', '取消'],
                btn1: function (index) {
                    var node = ztree.getSelectedNodes();
                    //选择上级部门
                    vm.plan.deptId = node[0].deptId;
                    vm.plan.deptName = node[0].name;

                    layer.close(index);
                }
            });
        },
        reload: function () {
            vm.showList = true;
            var page = $("#jqGrid").jqGrid('getGridParam','page');
            $("#jqGrid").jqGrid('setGridParam',{
                postData:{'planname': vm.q.planname},
                page:page
            }).trigger("reloadGrid");
        }
    }
});