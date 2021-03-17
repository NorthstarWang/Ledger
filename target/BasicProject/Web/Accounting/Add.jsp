<%@ page import="DAO.DataTableDAO" %>
<%--
  Created by IntelliJ IDEA.
  User: 15276
  Date: 2020/7/16
  Time: 4:13
  To change this template use File | Settings | File Templates.
--%>
<html lang="en">

<!-- begin::Head -->
<head>
    <meta charset="utf-8" />
    <base href="../../">
    <title>Accounting | Add</title>
    <meta name="description" content="Accounting index page">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />

    <!--begin::Fonts -->
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Poppins:300,400,500,600,700">
    <!--end::Fonts -->

    <!--begin::Page Vendors Styles(used by this page) -->
    <link href="assets/plugins/custom/fullcalendar/fullcalendar.bundle.css" rel="stylesheet" type="text/css" />

    <link href="assets/css/pages/blog/grid-v2.css" rel="stylesheet" type="text/css" />
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
                            <div class="kt-portlet kt-portlet--mobile">
                                    <div class="kt-portlet__head">
                                        <div class="kt-portlet__head-label">
                                            <h3 class="kt-portlet__head-title">Create new ledger</h3>
                                        </div>
                                    </div>

                                    <!--begin::Form-->
                                    <form class="kt-form kt-form--label-right" id="create" action="/DataTable" method="post">
                                        <div class="kt-portlet__body">
                                            <div class="form-group row">
                                                <div class="col-6 col-sm-12 col-md-12">
                                                    <label>Title:</label>
                                                    <input type="text" class="form-control" name="Title">
                                                    <span class="form-text text-muted">Please name the title of the ledger.</span>
                                                </div>
                                            </div>

                                            <div class="form-group row">
                                                <div class="col-6 col-sm-12 col-md-12">
                                                    <div class="form-group">
                                                        <label for="CategorySelect">Category:</label>
                                                        <div class="input-group">
                                                        <select class="form-control" id="CategorySelect" name="CategorySelect">
                                                            <%
                                                                DataTableDAO dataTableDAO = new DataTableDAO();
                                                                int userID = Integer.parseInt(session.getAttribute("UserID").toString());
                                                                String category_list = dataTableDAO.SelectCategory(userID);
                                                                String Array[] = category_list.split(",");
                                                                for (String option:Array) {
                                                            %>
                                                            <option value="<%=option%>"><%=option%></option>
                                                            <%
                                                                }
                                                            %>

                                                        </select>
                                                            <div class="input-group-append">
                                                                <button type="button" class="btn btn-accent btn-icon" data-toggle="modal" data-target="#addCategory"><i class="fa fa-plus-circle"></i></button>
                                                            </div>
                                                        </div>
                                                        <span class="form-text text-muted">Please select the category this ledger belongs.</span>
                                                    </div>
                                                </div>
                                            </div>





                                            <div class="form-group row">
                                                <div class="col-xl-6 col-lg-6 col-6">
                                                    <label>Header Selection:</label>
                                                    <select class="form-control kt-select2" id="kt_select2" name="kt_select2" multiple>
                                                        <optgroup label="Shortcut">
                                                            <option value="Date">Date</option>
                                                            <option value="Total">Total</option>
                                                            <option value="Ref">Ref</option>
                                                            <option value="Balance">Balance</option>
                                                            <option value="Debit">Debit</option>
                                                            <option value="Credit">Credit</option>
                                                            <option value="Name">Name</option>
                                                            <option value="Description">Description</option>
                                                            <option value="Account">Account</option>
                                                        </optgroup>
                                                    </select>
                                                    <span class="form-text text-muted">Please list the header you need for this ledger.</span>
                                                </div>
                                                <div class="col-xl-6 col-lg-6 col-6">
                                                    <label>Unit Selection:</label>
                                                    <select class="form-control kt-select2" id="kt_select2_unit" name="kt_select2_unit">

                                                    </select>
                                                    <span class="form-text text-muted">Please select the unit that represent price.</span>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="kt-portlet__foot">
                                            <div class="kt-form__actions">
                                                <div class="row">
                                                    <div class="col-lg-6">
                                                        <button type="button" class="btn btn-success" data-ktselect-action="action-submit">Create</button>
                                                        <button type="reset" class="btn btn-danger">Clear</button>
                                                        <button type="button" class="btn btn-primary" onclick="changeHeader()" data-toggle="modal" data-target="#exampleModalGrid">Preview</button>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </form>

                                        <!-- Modal -->
                                        <div class="modal fade bd-example-modal-xl" id="exampleModalGrid" tabindex="-1" role="dialog" aria-labelledby="exampleModalGrid" style="display: none;" aria-hidden="true">
                                            <div class="modal-dialog modal-dialog-centered modal-xl" role="document">
                                                <div class="modal-content">
                                                    <div class="modal-header">
                                                        <h5 class="modal-title" id="exampleModalCenterTitle">Datatable style preview</h5>
                                                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                                            <span aria-hidden="true">×</span>
                                                        </button>
                                                    </div>
                                                    <div class="modal-body">

                                                        <!--begin: Datatable -->
                                                        <table class="table table-striped- table-bordered table-hover table-checkable" id="kt_table">
                                                            <thead>
                                                            <tr id="trthead">
                                                            </tr>
                                                            </thead>
                                                        </table>

                                                        <!--end: Datatable -->
                                                    </div>
                                                    <div class="modal-footer">
                                                        <button type="button" class="btn btn-outline-brand" data-dismiss="modal">Close</button>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>

                                <script>
                                    function changeHeader() {
                                        var headers = $('#kt_select2').val();
                                        var header;
                                        $("#trthead").empty();
                                        for(var i =0,Header_Length = headers.length;i<Header_Length;i++){
                                            header = headers[i]
                                            var x = document.createElement("TH");
                                            var t = document.createTextNode(header);
                                            x.appendChild(t);
                                            document.getElementById("trthead").appendChild(x);
                                        }

                                    }
                                </script>

                                <form id="createCategory" method="get">
                                <!-- Modal -->
                                <div class="modal fade" id="addCategory" tabindex="-1" role="dialog" aria-labelledby="addCategoryTitle" aria-hidden="true">
                                    <div class="modal-dialog modal-dialog-centered" role="document">
                                        <div class="modal-content">
                                            <div class="modal-header">
                                                <h5 class="modal-title" id="addCategoryTitle">Add Category</h5>
                                                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                                    <span aria-hidden="true">&times;</span>
                                                </button>
                                            </div>
                                            <div class="modal-body">
                                                <div class="form-group">
                                                    <label>Category Name:</label>
                                                    <input type="text" class="form-control" name="NewCategory" id="NewCategory">
                                                </div>
                                            </div>
                                            <div class="modal-footer">
                                                <button type="button" class="btn btn-outline-brand" data-dismiss="modal">Close</button>
                                                <button type="button" class="btn btn-success" data-action="action-submit" >Add</button>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                </form>
                                    <!--end::Form-->
                            </div>
                        </div>
                        <script>
                            var ADD = function () {

                                var formEl;
                                var validator;

                                var initValidation = function () {
                                    validator = formEl.validate({
                                        // Validate only visible fields
                                        ignore: ":hidden",

                                        // Validation rules
                                        rules: {
                                            NewCategory: {
                                                required: true,
                                                maxlength:30,
                                            },
                                        },
                                        errorElement:'div',
                                        errorClass:'invalid-feedback',

                                        // Display error
                                        invalidHandler: function (event, validator) {
                                            KTUtil.scrollTop();

                                            swal.fire({
                                                "title": "",
                                                "text": "There are some errors in your submission. Please correct them.",
                                                "type": "error",
                                                "confirmButtonClass": "btn btn-secondary m-btn m-btn--wide"
                                            });
                                        },

                                    });
                                }

                                var initSubmit = function () {
                                    var btn = formEl.find('[data-action="action-submit"]');

                                    btn.on('click', function (e) {
                                        e.preventDefault();

                                        if (validator.form()) {
                                            // See: src\js\framework\base\app.js
                                            KTApp.progress(btn);
                                            //KTApp.block(formEl);
                                            // See: http://malsup.com/jquery/form/#ajaxSubmit
                                            var name = document.getElementById("NewCategory").value;
                                            formEl.ajaxSubmit({
                                                url:"DataTable?ID=<%=session.getAttribute("UserID").toString()%>&name="+name,
                                                type:"GET",
                                                success: function (data) {
                                                    KTApp.unprogress(btn);
                                                    //KTApp.unblock(formEl);

                                                    if(data==0){
                                                        swal.fire({
                                                            "title": "",
                                                            "text": "The category has been successfully added!",
                                                            "type": "success",
                                                            "confirmButtonClass": "btn btn-secondary"
                                                        }).then(function (result) {
                                                            if (result.value) {
                                                                window.location = "./Web/Accounting/Add.jsp";
                                                            }
                                                        });
                                                    }else if(data==1){
                                                        swal.fire({
                                                            "title": "",
                                                            "text": "There are some errors in your submission. Please correct them.",
                                                            "type": "error",
                                                            "confirmButtonClass": "btn btn-secondary m-btn m-btn--wide"
                                                        });
                                                    }else if(data ==2){
                                                        swal.fire({
                                                            "title": "",
                                                            "text": "You already have this category!",
                                                            "type": "warning",
                                                            "confirmButtonClass": "btn btn-secondary m-btn m-btn--wide"
                                                        });
                                                    }

                                                }
                                            });
                                        }
                                    });
                                }


                                return {
                                    // public functions
                                    init: function () {
                                        formEl = $('#createCategory');
                                        initValidation();
                                        initSubmit();
                                    }
                                };
                            }();

                            var KTDemo = function () {

                                var formEl;
                                var validator;

                                var initValidation = function () {
                                    validator = formEl.validate({
                                        // Validate only visible fields
                                        ignore: ":hidden",

                                        // Validation rules
                                        rules: {
                                            Title: {
                                                required: true,
                                                maxlength:50,
                                            },
                                            kt_select2: {
                                                required: true,
                                            },
                                            kt_select2_unit:{
                                                required:true
                                            }
                                        },
                                        errorElement:'div',
                                        errorClass:'invalid-feedback',

                                        // Display error
                                        invalidHandler: function (event, validator) {
                                            KTUtil.scrollTop();

                                            swal.fire({
                                                "title": "",
                                                "text": "There are some errors in your submission. Please correct them.",
                                                "type": "error",
                                                "confirmButtonClass": "btn btn-secondary m-btn m-btn--wide"
                                            });
                                        },

                                    });
                                }

                                var initSubmit = function () {
                                    var btn = formEl.find('[data-ktselect-action="action-submit"]');

                                    btn.on('click', function (e) {
                                        e.preventDefault();

                                        if (validator.form()) {
                                            // See: src\js\framework\base\app.js
                                            KTApp.progress(btn);
                                            //KTApp.block(formEl);
                                            // See: http://malsup.com/jquery/form/#ajaxSubmit
                                            formEl.ajaxSubmit({
                                                url:"DataTable?UserID=<%=userID%>",
                                                type:"Post",
                                                success: function (data) {
                                                    KTApp.unprogress(btn);
                                                    //KTApp.unblock(formEl);

                                                    if(data==0){
                                                        swal.fire({
                                                            "title": "",
                                                            "text": "The datatable has been successfully created!",
                                                            "type": "success",
                                                            "confirmButtonClass": "btn btn-secondary"
                                                        }).then(function (result) {
                                                            if (result.value) {
                                                                window.location = "./Web/Accounting/Ledger.jsp";
                                                            }
                                                        });
                                                    }else if(data==1){
                                                        swal.fire({
                                                            "title": "",
                                                            "text": "There are some errors occured, please check your form and sumbit again!",
                                                            "type": "error",
                                                            "confirmButtonClass": "btn btn-secondary m-btn m-btn--wide"
                                                        });
                                                    }else if(data==2){
                                                        swal.fire({
                                                            "title": "",
                                                            "text": "There are already a datatable with the same name! Please fill in a new name!",
                                                            "type": "warning",
                                                            "confirmButtonClass": "btn btn-secondary m-btn m-btn--wide"
                                                        });
                                                    }

                                                }
                                            });
                                        }
                                    });
                                }


                                return {
                                    // public functions
                                    init: function () {
                                        formEl = $('#create');
                                        initValidation();
                                        initSubmit();
                                    }
                                };
                            }();

                            // Class definition
                            var KTSelect2 = function () {
                                // Private functions
                                var demos = function () {
                                    // tagging support
                                    $('#kt_select2').select2({
                                        placeholder: "Add header",
                                        maximumSelectionLength: 10,
                                        tags: true
                                    }).on("change",function(e){
                                        $("#kt_select2_unit").empty()
                                        var selected = $('#kt_select2').select2("val");
                                        for (var i = 0; i < selected.length; i++) {
                                            $("#kt_select2_unit").append("<option value='"+selected[i]+"'>"+selected[i]+"</option>");
                                        }

                                    }).on("select2:select", function (evt) {
                                        var element = evt.params.data.element;
                                        var $element = $(element);

                                        $element.detach();
                                        $(this).append($element);
                                        $(this).trigger("change");
                                    });

                                    $('#kt_select2_unit').select2({
                                        placeholder: "Select Price Unit"
                                    })
                                }
                                // Public functions
                                return {
                                    init: function () {
                                        demos();
                                    }
                                };
                            }();

                            document.addEventListener('DOMContentLoaded', function(){
                                // your code goes here
                                ADD.init();
                                KTDemo.init();
                                KTSelect2.init();
                            }, false);

                        </script>
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
<script src="assets/js/datatables.bundle.js" type="text/javascript"></script>

<!--end::Page Vendors -->

<!--begin::Page Scripts(used by this page) -->
<script>
    var KTDatatablesExtensionButtons = function() {
        var initTable1 = function() {

            // begin first table
            var table = $('#kt_table').DataTable({});

        };

        return {

            //main function to initiate the module
            init: function() {
                initTable1();
            }
        };
    }();

    jQuery(document).ready(function() {
        KTDatatablesExtensionButtons.init();
    });

</script>
<!--end::Page Scripts -->
</body>

<!-- end::Body -->
</html>
