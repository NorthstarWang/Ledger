<%--
  Created by IntelliJ IDEA.
  User: 15276
  Date: 2020/7/18
  Time: 13:37
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<html lang="en">

<!-- begin::Head -->
<head>
    <meta charset="utf-8" />
    <base href="../../">
    <title>Accounting | Main</title>
    <meta name="description" content="Accounting index page">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />

    <!--begin::Fonts -->
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Poppins:300,400,500,600,700">
    <!--end::Fonts -->

    <!--begin::Page Vendors Styles(used by this page) -->
    <link href="assets/plugins/custom/jstree/jstree.bundle.css" rel="stylesheet" type="text/css">
    <!--end::Page Vendors Styles -->

    <!--begin::Global Theme Styles(used by all pages) -->
    <link href="assets/plugins/global/plugins.bundle.css" rel="stylesheet" type="text/css" />
    <link href="assets/css/style.bundle.css" rel="stylesheet" type="text/css" />

    <!--end::Global Theme Styles -->

    <!--begin::Layout Skins(used by all pages) -->

    <!--end::Layout Skins -->
    <link rel="shortcut icon" href="assets/media/logos/Juncus_title.png" />
</head>

<!-- end::Head -->

<!-- begin::Body -->
<body class="kt-quick-panel--right kt-demo-panel--right kt-offcanvas-panel--right kt-header--fixed kt-header--minimize-menu kt-header-mobile--fixed kt-subheader--enabled kt-subheader--transparent kt-page--loading">

<!-- begin::Page loader -->

<!-- end::Page Loader -->

<!-- begin:: Page -->

<!-- begin:: Header Mobile -->
<div id="kt_header_mobile" class="kt-header-mobile  kt-header-mobile--fixed ">
    <div class="kt-header-mobile__logo">
        <a href="index.jsp">
            <img alt="Logo" src="assets/media/logos/index_logo.png" />
        </a>
    </div>
    <div class="kt-header-mobile__toolbar">
        <button class="kt-header-mobile__toolbar-toggler" id="kt_header_mobile_toggler"><span></span></button>
        <button class="kt-header-mobile__toolbar-topbar-toggler" id="kt_header_mobile_topbar_toggler"><i class="flaticon-more"></i></button>
    </div>
</div>

<!-- end:: Header Mobile -->
<div class="kt-grid kt-grid--hor kt-grid--root">
    <div class="kt-grid__item kt-grid__item--fluid kt-grid kt-grid--ver kt-page">
        <div class="kt-grid__item kt-grid__item--fluid kt-grid kt-grid--hor kt-wrapper" id="kt_wrapper">

            <!-- begin:: Header -->
            <div id="kt_header" class="kt-header kt-grid__item  kt-header--fixed " data-ktheader-minimize="on" style="background-image: url( assets/media/layout/header-bg-demo3.jpg)">
                <jsp:include page="../layout/HeaderV2.jsp" flush="true"/>
                <%@include file="../layout/HeaderV1.jsp"%>
            </div>
            <!-- end:: Header -->

            <div class="kt-container kt-container--fluid kt-grid__item kt-grid__item--fluid kt-grid kt-grid--hor kt-grid--stretch">
                <div class="kt-body kt-grid__item kt-grid__item--fluid kt-grid kt-grid--hor kt-grid--stretch" id="kt_body">
                    <div class="kt-content kt-grid__item kt-grid__item--fluid kt-grid kt-grid--hor" id="kt_content">

                        <!-- begin:: Subheader -->
                        <div class="kt-subheader   kt-grid__item" id="kt_subheader"></div>
                        <!-- end:: Subheader -->

                        <!-- begin:: Content -->
                        <div class="kt-container  kt-grid__item kt-grid__item--fluid">

                            <div class="row" data-sticky-container>
                                <div class="col-lg-3 col-xl-2">
                                    <div class="kt-portlet sticky"  data-sticky="true" data-margin-top="100" data-sticky-for="1023" data-sticky-class="kt-sticky">
                                        <div class="kt-portlet__head">
                                            <div class="kt-portlet__head-label">
                                                <h3 class="kt-portlet__head-title">
                                                    Category Index
                                                </h3>
                                            </div>
                                        </div>
                                        <div class="kt-portlet__body">
                                            <div id="kt_tree" class="tree-demo">
                                            </div>
                                        </div>
                                    </div>

                                </div>
                                <div class="col-lg-9 col-xl-10">
                                    <div class="kt-portlet kt-portlet--mobile kt-portlet--height-fluid">
                                        <div class="kt-portlet__head">
                                            <div class="kt-portlet__head-label">
                                                <h3 class="kt-portlet__head-title">

                                                    DataTable
                                                </h3>
                                            </div>
                                            <div class="kt-portlet__head-toolbar">
                                                <div class="kt-portlet__head-toolbar-wrapper">
                                                    <a href="#" data-toggle="modal" data-target=".bd-example-modal-xl" class="btn btn-default btn-bold btn-upper btn-font-sm" onclick="changeHeader()">
                                                        <i class="flaticon2-add-1"></i>
                                                        New Data
                                                    </a>
                                                </div>
                                            </div>

                                            <!-- Large Modal -->
                                            <div class="modal fade bd-example-modal-xl" tabindex="-1" role="dialog" aria-labelledby="myLargeModalLabel" aria-hidden="true">
                                                <div class="modal-dialog modal-xl">

                                                    <div class="modal-content">
                                                        <div class="modal-header">
                                                            <h5 class="modal-title">New Data</h5>
                                                            <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                                                <span aria-hidden="true">&times;</span>
                                                            </button>
                                                        </div>
                                                        <form id="newData" action="AddData" method="post">
                                                        <div class="modal-body" id="insertData">
                                                            <table class="table table-striped- table-bordered table-hover table-checkable">
                                                                <thead>
                                                                <tr id="trthead">
                                                                </tr>
                                                                </thead>
                                                                <tbody>
                                                                <tr id="trtbody"></tr>
                                                                </tbody>
                                                            </table>
                                                        </div>
                                                        </form>
                                                        <div class="modal-footer">
                                                            <button type="button" class="btn btn-outline-brand" data-dismiss="modal">Close</button>
                                                            <button type="button" class="btn btn-outline-brand" id="creatData">Add</button>
                                                        </div>
                                                    </div>

                                                </div>
                                            </div>

                                        </div>
                                        <div class="kt-portlet__body" id="table_container" >
                                            <!--begin: Datatable -->
                                            <table class="table table-striped- table-bordered table-hover table-checkable" id="kt_table">
                                            </table>
                                            <!--end: Datatable -->
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <!-- end:: Content -->
                    </div>
                </div>
            </div>

            <!-- begin:: Footer -->
            <%@include file="/Web/layout/FooterV1.jsp"%>

            <!-- end:: Footer -->
        </div>
    </div>
</div>

<!-- end:: Page -->
<!-- begin::Scrolltop -->
<div id="kt_scrolltop" class="kt-scrolltop">
    <i class="fa fa-arrow-up"></i>
</div>

<!-- end::Scrolltop -->


<!-- begin::Global Config(global config for global JS sciprts) -->
<script>
    var KTAppOptions = {
        "colors": {
            "state": {
                "brand": "#4d5cf2",
                "metal": "#c4c5d6",
                "light": "#ffffff",
                "accent": "#00c5dc",
                "primary": "#5867dd",
                "success": "#34bfa3",
                "info": "#36a3f7",
                "warning": "#ffb822",
                "danger": "#fd3995",
                "focus": "#9816f4"
            },
            "base": {
                "label": [
                    "#c5cbe3",
                    "#a1a8c3",
                    "#3d4465",
                    "#3e4466"
                ],
                "shape": [
                    "#f0f3ff",
                    "#d9dffa",
                    "#afb4d4",
                    "#646c9a"
                ]
            }
        }
    };
</script>

<!-- end::Global Config -->

<!--begin::Global Theme Bundle(used by all pages) -->
<script src="assets/plugins/global/plugins.bundle.js" type="text/javascript"></script>
<script src="assets/js/scripts.bundle.js" type="text/javascript"></script>
<!--end::Global Theme Bundle -->

<!--begin::Page Vendors(used by this page) -->
<script src="assets/plugins/custom/jstree/jstree.bundle.js" type="text/javascript"></script>

<script src="assets/plugins/custom/datatables/datatables.bundle.js" type="text/javascript"></script>
<script src="assets/js/fnReloadAjax.js" type="text/javascript"></script>
<!--end::Page Vendors -->

<!--begin::Page Scripts(used by this page) -->
<script>
    function clearNoNum(obj){
        obj.value = obj.value.replace(/[^\d.]/g,"");  //清除“数字”和“.”以外的字符
        obj.value = obj.value.replace(/^\./g,"");  //验证第一个字符是数字而不是.
        obj.value = obj.value.replace(/\.{2,}/g,"."); //只保留第一个. 清除多余的.
        obj.value = obj.value.replace(".","$#$").replace(/\./g,"").replace("$#$",".");

    }

    var KTData = function () {//Validate new data

        var initSubmit = function (array) {
            var btn = $("#creatData");
            console.log(array)
            btn.on('click', function (e) {
                e.preventDefault();
                    // See: src\js\framework\base\app.js
                    // See: http://malsup.com/jquery/form/#ajaxSubmit
                    var name=$('#kt_tree').jstree('get_selected', true)[0].text;
                    var url_str =""
                for(var i = 0; i < array.length; i++){
                    var header_name = "#"+array[i].trim()+"_JsonData"
                    url_str += "&"+array[i].trim()+"_JsonData"+"="+$(header_name).val()
                }
                var xmlHttp = new XMLHttpRequest();

                //设置请求状态变化时触发的事件
                xmlHttp.onreadystatechange = function(){
                    //如果请求状态码为4，说明请求已经完成，响应已经就绪
                    if(xmlHttp.readyState == 4){
                        //响应状态码为200，响应完成
                        if(xmlHttp.status == 200){
                            //获取服务器返回的信息
                            var data = xmlHttp.responseText;
                            //判断返回的信息，输出响应的提示信息
                            if(data==0){
                                swal.fire({
                                    "title": "",
                                    "text": "The data has been successfully added!",
                                    "type": "success",
                                    "confirmButtonClass": "btn btn-secondary"
                                });
                            }else{
                                swal.fire({
                                    "title": "",
                                    "text": "Please fill in the blank",
                                    "type": "warning",
                                    "confirmButtonClass": "btn btn-secondary"
                                });
                            }
                        }
                    }
                }
                //创建连接
                xmlHttp.open("POST","AddData?UserID=<%=session.getAttribute("UserID").toString()%>&Name="+name+url_str);

                console.log(url_str)
                //发送请求
                xmlHttp.send();

            });
        }


        return {
            // public functions
            init: function (array) {
                initSubmit(array);
            }
        };
    }();

    function changeHeader() {
        var text = $('#kt_tree').jstree('get_selected', true)[0].text;
        var xmlHttp = new XMLHttpRequest();
        xmlHttp.onreadystatechange = function(){
            //如果请求状态码为4，说明请求已经完成，响应已经就绪
            if(xmlHttp.readyState == 4){
                //响应状态码为200，响应完成
                if(xmlHttp.status == 200){
                    //获取服务器返回的信息
                    var data = xmlHttp.responseText;
                    //判断返回的信息，输出响应的提示信息
                    if(data != 0){
                        $.ajax({
                            type: "POST",
                            url: "TableLoader?UserID=<%=session.getAttribute("UserID").toString()%>&Name=" + text,
                            success: function(unit) {
                                $("#trthead").empty();
                                $("#trtbody").empty();
                                var array = data.split(",");
                                console.log(array)
                                for (var i = 0; i < array.length; i++) {
                                    console.log(unit)
                                    console.log(array[i].trim())
                                    $("#trthead").append(" <th>" + array[i].trim() + "</th>.");
                                    if(array[i].trim()===unit.trim()){
                                        $("#trtbody").append(" <td><input class=\"form-control\" onkeyup=\"clearNoNum(this)\" id=\"" + array[i].trim() + "_JsonData\" type=\"text\"></td>.");
                                    }else{
                                        $("#trtbody").append(" <td><input class=\"form-control \"  id=\"" + array[i].trim() + "_JsonData\" type=\"text\"></td>.");
                                    }

                                }

                                KTData.init(array);

                            }
                        })

                    }
                }
            }
        }
        //创建连接
        xmlHttp.open("Get","TableLoader?UserID=<%=session.getAttribute("UserID").toString()%>&text="+text);

        //发送请求
        xmlHttp.send();


    }


    var KTTreeview = function () {
        var demo = function () {

            $("#kt_tree").jstree({
                "core": {
                    "themes": {
                        "responsive": false
                    },
                    // so that create works
                    // so that create works
                    "check_callback" : true,
                    'data' : function (obj, callback){
                        $.ajax({
                            url : "TreeView?UserID=<%=session.getAttribute("UserID").toString()%>",
                            dataType : "json",
                            type : "GET",
                            success : function(data) {
                                console.info(data);
                                if(data) {
                                    callback.call(this, data);
                                }else{
                                    $('#kt_tree').html("No Category yet!")
                                }
                            }
                        });
                    },
                },
                "types": {
                    "default": {
                        "icon": "fa fa-folder kt-font-success"
                    },
                    "file": {
                        "icon": " flaticon2-file  kt-font-success"
                    }
                },
                "state": {
                    "key": "demo2",
                    "opened":false,
                    "selected":false,
                },
                "plugins": ["dnd", "state", "types"]
            }).on('select_node.jstree', function (e, data) {

                    var text = $('#kt_tree').jstree('get_selected', true)[0].text;
                    var xmlHttp = new XMLHttpRequest();

                    if ($.fn.dataTable.isDataTable('#kt_table')) {
                        $('#kt_table').DataTable().clear().destroy();
                    }
                    //设置请求状态变化时触发的事件
                    xmlHttp.onreadystatechange = function(){
                        //如果请求状态码为4，说明请求已经完成，响应已经就绪
                        if(xmlHttp.readyState == 4){
                            //响应状态码为200，响应完成
                            if(xmlHttp.status == 200){
                                //获取服务器返回的信息
                                var data = xmlHttp.responseText;
                                $("#kt_table").empty();
                                if(data==0){
                                    $("#kt_table").html("<div class=\"kt-section__content  kt-section__content--border\"><div class=\"kt-divider\"><span></span><span>Please select a table to view</span><span></span></div></div>")
                                }else{
                                    //判断返回的信息，输出响应的提示信息
                                    $("#kt_table").html("<thead><tr></tr></thead><tfoot><tr></tr></tfoot>")
                                    var array = data.split(",");
                                    var array_trim = [];
                                    for(var i = 0; i < array.length; i++){
                                        array_trim.push(array[i].trim())
                                    }
                                    var column = [];
                                    for (var i = 0; i < array.length; i++) {
                                        $("tr").append(" <th>" + array[i].trim() + "</th>.");
                                        var json = {"data": array[i].trim()};
                                        column.push(json)
                                    }

                                    $.ajax({
                                        type: "POST",
                                        url: "TableLoader?UserID=<%=session.getAttribute("UserID").toString()%>&Name=" + text,
                                        success: function(dataAjax){

                                            var table = $('#kt_table').DataTable({
                                                responsive: true,

                                                dom: "<'row'<'col-sm-6 text-left'f><'col-sm-6 text-right'B>>\
			<'row'<'col-sm-12'tr>>\
			<'row'<'col-sm-12 col-md-5'i><'col-sm-12 col-md-7 dataTables_pager'lp>>",
                                                buttons: [
                                                    'print',
                                                    'copyHtml5',
                                                    'excelHtml5',
                                                    'csvHtml5',
                                                    'pdfHtml5',
                                                ],
                                                processing: true,
                                                serverSide: true,
                                                paging: false,
                                                ajax: {
                                                    url: 'TreeView?UserID=<%=session.getAttribute("UserID").toString()%>&Name=' + text,
                                                    type: 'POST',
                                                    "dataSrc": ""
                                                },
                                                columns: column,
                                                footerCallback: function (row, data, start, end, display) {
                                                    var column = array_trim.indexOf(dataAjax.trim());
                                                    var api = this.api(), data;

                                                    // Remove the formatting to get integer data for summation
                                                    var intVal = function (i) {
                                                        return typeof i === 'string' ? i.replace(/[\$,]/g, '') * 1 : typeof i === 'number' ? i : 0;
                                                    };

                                                    // Total over all pages
                                                    var total = api.column(column).data().reduce(function (a, b) {
                                                        return intVal(a) + intVal(b);
                                                    }, 0);

                                                    // Total over this page
                                                    var pageTotal = api.column(column, {page: 'current'}).data().reduce(function (a, b) {
                                                        return intVal(a) + intVal(b);
                                                    }, 0);

                                                    // Update footer
                                                    $(api.column(column).footer()).html(
                                                        '$' + KTUtil.numberString(pageTotal.toFixed(2)) + '<br/> ( $' + KTUtil.numberString(total.toFixed(2)) + ' total)',
                                                    );
                                                },
                                            });
                                            // begin first table
                                        }
                                    })
                                }
                            }
                        }
                    }
                    //创建连接
                    xmlHttp.open("Get","TableLoader?UserID=<%=session.getAttribute("UserID").toString()%>&text="+text);

                    //发送请求
                    xmlHttp.send();


            });
        }

        return {
            //main function to initiate the module
            init: function () {
                demo();
            }
        };
    }();

    var KTStickyPanelsDemo = function () {

        // Private functions

        // Basic demo
        var demo1 = function () {
            if (KTLayout.onAsideToggle) {
                var sticky = new Sticky('.sticky');

                KTLayout.onAsideToggle(function () {
                    setTimeout(function () {
                        sticky.update(); // update sticky positions on aside toggle
                    }, 500);
                });
            }
        }

        return {
            // public functions
            init: function () {
                demo1();
            }
        };
    }();

    jQuery(document).ready(function () {
        KTStickyPanelsDemo.init();
        KTTreeview.init();
    });
</script>

<!--end::Page Scripts -->
</body>

<!-- end::Body -->
</html>
